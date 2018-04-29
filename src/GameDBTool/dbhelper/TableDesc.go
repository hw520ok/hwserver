package dbhelper

type TableDesc []*DescRow

type DescRow struct {
	ColName string
	TypeName string
	CanNull string
	Key string
	Default string
	Extra string
}

