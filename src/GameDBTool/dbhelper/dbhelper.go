package dbhelper

import(
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"GameDBTool/conf"
	"time"
	"fmt"
	"strings"
	"strconv"
)

type Col map[string]interface{}
type TableData map[string]Col
type DBData map[string]TableData

var Helper *DBHelper
type DBHelper struct {
	sHost string
	sPort string
	sUserName string
	sPassword string
	sDBName string
	db *sql.DB
	Data DBData
}

func (h *DBHelper) Init() {
	h.sHost = conf.DB_HOST
	h.sPort = conf.DB_PORT
	h.sUserName = conf.DB_USER
	h.sPassword = conf.DB_PWD
	h.sDBName = conf.DB_NAME
}

func (h *DBHelper) Connect() {
	srtConnect := h.sUserName + ":" + h.sPassword + "@tcp(" + h.sHost + ":" + h.sPort + ")/" + h.sDBName
	var err error
	h.db, err = sql.Open("mysql",srtConnect)
	if err != nil {
		log.Printf("connect db err %v \n", err);
		return;
	}
	log.Println("hello world");
}

func (h *DBHelper) GetColumn(tableName string) []*DescRow{
	rows, err := h.db.Query("DESC " + tableName + ";" )
	if err != nil {
		log.Println(err)
		return nil
	}

	tableDesc := make([]*DescRow, 0)
	for rows.Next() {
		descRow := new(DescRow)
		err = rows.Scan(&descRow.ColName, &descRow.TypeName, &descRow.CanNull, &descRow.Key, &descRow.Default, &descRow.Extra)
		if err != nil {
			log.Println(err)
		}
		tableDesc = append(tableDesc, descRow)
	}
	rows.Close()
	return tableDesc
}

func (h *DBHelper) Query(tableName string) {
	mapCol := h.GetColumn(tableName)
	rows, err := h.db.Query("SELECT * FROM " + tableName + ";" )
	if err != nil {
		log.Println(err)
		return
	}

	for rows.Next() {
		values := make([]sql.RawBytes, len(mapCol))
		scanArgs := make([]interface{}, len(mapCol))
		for i := range values {
			scanArgs[i] = &values[i]
		}
		err = rows.Scan(scanArgs...)
		if err != nil {
			log.Println(err)
			panic(err)
		}
		for i := 0; i < len(mapCol); i++ {
			// var result interface{}
			sValue := string(values[i])
			typeName := mapCol[i].TypeName
			log.Println(sValue)
			bNumber := strings.Contains(typeName, "int")
			if bNumber == true {

			} else {

			}
		}
	}
	rows.Close();
}

func (h *DBHelper) FormatValue(data string, typeName string) (value interface{}, err error) {
	bNumber := strings.Contains(typeName, "int")
	bUnsigned := strings.Contains(typeName, "unsigned")

	if bNumber == true {
		if bUnsigned == true {
			value, err = strconv.ParseUint(fmt.Sprint(data), 10, 64)
			if err != nil {
				value = 0;
			}
			switch v := value.(type) {
			case int64:
				log.Println(string(v))
			}
		} else {
			value, err = strconv.ParseInt(fmt.Sprint(data), 10, 64)
			if err != nil {
				value = 0;
			}
			switch v := value.(type) {
			case int64:
				log.Println(string(v))
			}
		}
	} else {
		value = data
		switch v := value.(type) {
		case int64:
			log.Println(string(v))
		}
	}
	return value, err
}

func printValue(pval *interface{}) string {
    var s_txt string
    switch v := (*pval).(type) {
    case nil:
        s_txt = "NULL"
    case time.Time:
        s_txt = "'" + v.Format("2006-01-02 15:04:05.999") + "'"
    case int, int8, int16, int32, int64, float32, float64, byte:
        s_txt = fmt.Sprint(v)
    case []byte:
        s_txt = string(v)
    case bool:
        if v {
            s_txt = "'1'"
        } else {
            s_txt = "'0'"
        }
    default:
        s_txt = "'" + fmt.Sprint(v) + "'"
    }
    return s_txt
}

func init() {
	Helper = new(DBHelper)
}