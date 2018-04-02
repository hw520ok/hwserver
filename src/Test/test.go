package main

import (
	"flag"
	"fmt"
)

var (
	h string
	t string
	v string
)
func flagInit() {
	flag.StringVar(&h,"h","","test h")
	flag.StringVar(&t,"t","","test h")
	flag.StringVar(&v,"v","","test h")
}
func main() {
	flagInit()
	flag.Parse()
	fmt.Printf("args=%s, num=%d\n", flag.Args(), flag.NArg())  
    for i := 0; i != flag.NArg(); i++ {  
        fmt.Printf("arg[%d]=%s\n", i, flag.Arg(i))  
    }  
    fmt.Println("h=", h)  
    fmt.Println("t=", t)  
    fmt.Println("v=", v)  
}