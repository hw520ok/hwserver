package main

import (
	"github.com/tealeg/xlsx"
	"log"
)

type TableModel struct  {
	data []*xlsx.Row
	attrName []string
	attrType []string
	tableName string
}

func (tm *TableModel) loadByXlsx(tableName string, sheet *xlsx.Sheet) {
	tm.tableName = tableName

	if len(sheet.Rows) < 2 {
		log.Printf("[ERR]sheet row line must bigger then 2.\n")
		return 
	}
	for _, cell := range sheet.Rows[0].Cells {
		tm.attrName = append(tm.attrName, cell.String())
	}
	for _, cell := range sheet.Rows[1].Cells {
		if(cell.Value == "int") {
			tm.attrType = append(tm.attrName, "int")
		}else {
			tm.attrType = append(tm.attrName, "string")
		}
	}

	tm.data = make([]*xlsx.Row, len(sheet.Rows) - 2)
	for i := 0 ; i < len(tm.data) - 1; i ++ {
		tm.data[i] = sheet.Rows[i + 2]
	}
}
