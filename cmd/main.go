package main

import (
	"log"
	"net/http"
)

func main() {
	log.Println("Starting HTTP server on :3000")
	http.Handle("/", http.FileServer(http.Dir("/static")))
	http.ListenAndServe(":3000", nil)
}
