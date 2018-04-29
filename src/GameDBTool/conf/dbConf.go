package conf

import (
	"os"
	"bufio"
	"io"
	"strings"
	"log"
)

var (
	DB_HOST string = "127.0.0.1"
	DB_PORT string = "3306"
	DB_USER string = "root"
	DB_PWD string = "root"
	DB_NAME string = "mecha"
	ConfDBConnect = "./dbconf.ini"
	ConfTableExport = "./dbexport.ini"
	DBExportTable []string
)

func ReadDBConfig() {
	iniFile, err := os.OpenFile(ConfDBConnect, os.O_RDONLY, 0666)
	defer iniFile.Close()
	if err != nil {
		log.Printf("%v \n", err)
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
		if str[0] == "host" {
			DB_HOST = str[1]
		}
		if str[0] == "port" {
			DB_PORT = str[1]
		}
		if str[0] == "user_name" {
			DB_USER = str[1]
		}
		if str[0] == "pwd" {
			DB_PWD = str[1]
		}
		if str[0] == "db" {
			DB_NAME = str[1]
		}
	}
}

func LoadExportTables() {
	DBExportTable = make([]string, 10)
	iniFile, err := os.OpenFile(ConfTableExport, os.O_RDONLY, 0666)
	defer iniFile.Close()
	if err != nil {
		log.Printf("%v \n", err)
		panic(err)
	}
	br := bufio.NewReader(iniFile)
	for {
		a, _, c := br.ReadLine()
		if c == io.EOF {
			break
		}
		if string(a) != "" {
			DBExportTable = append(DBExportTable, string(a))
		}
	}
}