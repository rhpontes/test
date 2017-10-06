package main

import (
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {

	router := mux.NewRouter().StrictSlash(true)

	router.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Products API Server")
	})

	router.HandleFunc("/products", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Products API Server")
	})

	router.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "OK")
	})

	err := http.ListenAndServe(":3000", router)
	if err != nil {
		fmt.Println("Error on launch server")
	}

}
