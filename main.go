package main

import (
	"github.com/labstack/echo/v4"
	"github.com/miztch/todoapp/model"
	"github.com/miztch/todoapp/router"
)

func main() {
	sqlDB := model.DBConnection()
	defer sqlDB.Close()

	e := echo.New()
	router.SetRouter(e)
}
