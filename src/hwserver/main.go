package main

import (
	"net/http"
	"github.com/gorilla/websocket"
)

var upgrade = websocket.Upgrader{
	ReadBufferSize:1024,
	WriteBufferSize:1024,

}

func connectHandle(w http.ResponseWriter, r *http.Request) {
}


func main () {

}