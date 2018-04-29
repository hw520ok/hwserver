package unit

import (
	"github.com/tealeg/xlsx"
	"log"
)

type TableModel struct  {
	Data []*xlsx.Row
	AttrName []string
	AttrType []string
	TableName string
}

func (tm *TableModel) LoadByXlsx(tableName string, sheet *xlsx.Sheet) {
	tm.TableName = tableName

	if len(sheet.Rows) < 2 {
		log.Printf("[ERR]sheet row line must bigger then 2.\n")
		return 
	}
	for _, cell := range sheet.Rows[0].Cells {
		tm.AttrName = append(tm.AttrName, cell.String())
	}
	for _, cell := range sheet.Rows[1].Cells {
		if(cell.Value == "int") {
			tm.AttrType = append(tm.AttrName, "int")
		}else {
			tm.AttrType = append(tm.AttrName, "string")
		}
	}

	tm.Data = make([]*xlsx.Row, len(sheet.Rows) - 2)
	for i := 0 ; i < len(tm.Data) - 1; i ++ {
		tm.Data[i] = sheet.Rows[i + 2]
	}
}
