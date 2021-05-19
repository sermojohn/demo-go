package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	fmt.Println("starting server")

	http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
		bd, err := ioutil.ReadAll(r.Body)
		if err != nil {
			defer r.Body.Close()
		}
		fmt.Printf("%s %s\n", r.Method, r.URL.String())
		fmt.Printf("%s\n\n", string(bd))

		fmt.Fprintf(rw, "bye bye!")
	})

	err := http.ListenAndServe(":81", nil)
	fmt.Printf("exiting with error: %v", err)
}
