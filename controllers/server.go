package controllers

import (
	"github.com/gin-gonic/gin"
)

func server() {
	r := gin.Default()
	r.GET("/books", getBooks)
	r.GET("/books:id", getBook)
	r.GET("/books", addBook)
	r.POST("/books/:id", updateBook)
	r.DELETE("books/:id", deleteBook)

	r.Run(":8080")
}
