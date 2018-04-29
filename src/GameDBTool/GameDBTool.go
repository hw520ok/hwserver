package main

import (
	"log"
	"os"
	"GameDBTool/dbhelper"
	"GameDBTool/conf"
)

func setLog() {
	logFile, err := os.OpenFile("./info.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0666)
	if err != nil {
		panic(err)
	}
	log.SetOutput(logFile)
}


func main() {
	setLog()
	conf.ReadDBConfig() //读取数据库连接配置
	conf.LoadExportTables() //读取导出数据表的连接配置


	dbhelper.Helper.Init()
	dbhelper.Helper.Connect()
	dbhelper.Helper.Query("skill_type")

	// readConfig()
	// findAllFiles(xlsxInputPath)
	// exportBinary()
}