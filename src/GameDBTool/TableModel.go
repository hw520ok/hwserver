package main

import (
	"github.com/tealeg/xlsx"
	"log"
)

type TableModel struct  {
	data []*xlsx.Row
	attrName []string
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
	tm.data = make([]*xlsx.Row, len(sheet.Rows) - 2)
	for i := 1 ; i < len(sheet.Rows) - 2; i ++ {
		tm.data[i - 1] = sheet.Rows[i]
	}
}
