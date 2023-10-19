package model

import "time"

type Author struct {
	ID    int
	Name  string
	Books []Book
}

type Book struct {
	ID          int
	Title       string
	ISBN        string
	Authors     []Author
	Categories  []Category
	Publisher   Publisher
	PublisherAt time.Time
}

type Category struct {
	ID   int
	Name string
}

type Publisher struct {
	ID   int
	Name string
}
