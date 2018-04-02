package main

import (
	"bytes"
	"encoding/binary"
	"strconv"
	"strings"
	// "github.com/tealeg/xlsx"
	"log"
	"os"
	"bufio"
	"io"
	"path"
	"path/filepath"
	"github.com/tealeg/xlsx"
)

var (
	xlsxInputPath string
	anlyseTableNameBySheet = false
	outFilePath = "./rmblr.bd"
	allData = make([]*TableModel, 0)
)

func setLog() {
	logFile, err := os.OpenFile("./info.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0666)
	if err != nil {
		panic(err)
	}
	log.SetOutput(logFile)
}

func readConfig() {
	iniFile, err := os.OpenFile("./config.ini", os.O_CREATE|os.O_RDONLY, 0666)
	defer iniFile.Close()
	if err != nil {
		panic(err)
	}
	br := bufio.NewReader(iniFile)
	for {
		a, _, c := br.ReadLine()
		if c == io.EOF {
			break
		}
		str := strings.Split(string(a), "=")
		if len(str) < 2 {
			continue
		}
		for i,_ := range str {
			str[i] = strings.Trim(str[i], " ")
			str[i] = strings.Trim(str[i], "\"")
		}
		if str[0] == "anlyseTableNameBySheet" {
			anlyseTableNameBySheet,_ = strconv.ParseBool(str[1])
		}
		if str[0] == "xlsx_path" {
			xlsxInputPath = str[1]
		}
	}
}

func findAllFiles(xlslFile string) {
	fs, err := os.Stat(xlslFile)
	if err != nil {
		log.Printf("[ERR]os.Stat(%v). [%v] \n", xlslFile,  err)
		return;
	}
	if fs.IsDir() {
		err := filepath.Walk(xlslFile, func(xlslFile string, f os.FileInfo, err error) error {
			if f == nil {
				return err
			}
			if f.IsDir() {
				return nil
			}

			fileExt := path.Ext(f.Name())
			tableName := strings.TrimSuffix(f.Name(), fileExt)
			if(fileExt == ".xlsx" || fileExt == "xls") {
				xlsxfile, err := xlsx.OpenFile(xlslFile)
				if err != nil {
					log.Printf("[ERR]xlsx file not found. [%v] \n", xlslFile)
					return err
				}
				if anlyseTableNameBySheet == true {
					for _, sheet := range xlsxfile.Sheets {
						tm := new(TableModel)
						tm.loadByXlsx(sheet.Name, sheet)
						allData = append(allData, tm)
						log.Printf("[info] read table %v %v  \n", sheet.Name , fileExt)
					}
				} else {
					tm := new(TableModel)
					tm.loadByXlsx(tableName, xlsxfile.Sheets[0])
					allData = append(allData, tm)
					log.Printf("[info] read table %v %v  \n", tableName , fileExt)
				}
			}
			
			return nil	
		})
		if err != nil {
			log.Printf("[ERR]filepath.Walk fail. [%v] \n", err)
			return;
		}
	} else {
		fileExt := path.Ext(fs.Name())
		tableName := strings.TrimSuffix(fs.Name(), fileExt)
		if(fileExt == ".xlsx" || fileExt == "xls") {
			xlsxfile, err := xlsx.OpenFile(xlslFile)
			if err != nil {
				log.Printf("[ERR]xlsx file not found. [%v] \n", xlslFile)
				return
			}
			if anlyseTableNameBySheet == true {
				for _, sheet := range xlsxfile.Sheets {
					tm := new(TableModel)
					tm.loadByXlsx(sheet.Name, sheet)
					allData = append(allData, tm)
					log.Printf("[info] read table %v %v  \n", sheet.Name , fileExt)
				}
			} else {
				tm := new(TableModel)
				tm.loadByXlsx(tableName, xlsxfile.Sheets[0])
				allData = append(allData, tm)
				log.Printf("[info] read table %v %v  \n", tableName , fileExt)
			}
		}
	}
}

func exportBinary() {
	outFile, err := os.OpenFile(outFilePath, os.O_CREATE|os.O_WRONLY|os.O_APPEND, 0666)
	defer outFile.Close()
	if err != nil {
		panic(err)
	}

	for _, tm := range allData {
		exportOne(tm, outFile)
	}

}

func exportOne(tm *TableModel, f *os.File) {
	a := 65535
	b := 4
	buf := make([]byte, b)
	binary.LittleEndian.PutUint32(buf,uint32(a))
	buf2 := make([]byte, b)
	binary.LittleEndian.PutUint32(buf2,uint32(a))
	buf3 := new (bytes.Buffer)
	err := binary.Write(buf3, binary.LittleEndian, uint32(a))
	if(err != nil) {
		return
	}
	// s := "测试字符串"
	// buf4 := new (bytes.Buffer)
	// binary.Write(buf4, binary.LittleEndian, s)
	bTableName := []byte(tm.tableName)
	f.Write(bTableName)
	
	// for i,cell := range tm.attrName {

	// }
	// for i,row := range tm.data {

	// }
}

func main() {
	setLog()
	readConfig()
	findAllFiles(xlsxInputPath)
	exportBinary()
}