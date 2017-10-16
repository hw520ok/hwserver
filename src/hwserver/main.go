package main

import (
	"github.com/gorilla/websocket"
)

var upgrade = websocket.Upgrader{
	ReadBufferSize:1024,
	WriteBufferSize:1024,
	
}

func main () {
	
}