package main

import (
    "fmt"
    "os"
    "strings"
)

func isArch() bool {
    // read /etc/os-release
    data, err := os.ReadFile("/etc/os-release")
    if err != nil {
        return false
    }

    // check user is Arch
    content := string(data)
    return strings.Contains(content, "ID=arch") || strings.Contains(content, "ID_LIKE=arch")
}

func main() {
    if isArch() {
        fmt.Println("I use Arch btw")
    } else {
        fmt.Println("You don't use Arch btw.")
        fmt.Println("Get your Arch here btw: https://archlinux.org/download/")
    }
}
