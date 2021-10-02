package main

import (
    "fmt"
    "io/ioutil"
    "os"
)

func main() {
    if len(os.Args) < 2 {
        _, _ = fmt.Fprintf(os.Stderr, "usage: show (filename)")
        os.Exit(1)
    }

    bs, err := ioutil.ReadFile(os.Args[1])
    if err != nil {
        _, _ = fmt.Fprintf(os.Stderr, "show: unable to read file \"%s\"", os.Args[1])
        os.Exit(2)
    }
    fmt.Printf(string(bs))
}
