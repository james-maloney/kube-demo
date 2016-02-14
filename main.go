package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		w.Write([]byte(`Hello, World!`))
	})

	http.HandleFunc("/_status/healthz", func(w http.ResponseWriter, req *http.Request) {
		w.Write([]byte(`ok`))
	})

	log.Fatal(http.ListenAndServe(":8000", nil))
}
