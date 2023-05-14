package models

import (
	_ "github.com/go-sql-driver/mysql"
)

type Book struct {
	ID         int    `json:"id"`
	Title      string `json:"title"`
	Author     string `json:"author"`
	Publishser string `json:"publisher"`
}

func dbconection() {

}
