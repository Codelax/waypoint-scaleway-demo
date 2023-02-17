package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"sync/atomic"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
	val := &atomic.Int64{}

	e.GET("/", func(c echo.Context) error {
		valSync := val.Add(1)

		return c.String(http.StatusOK, fmt.Sprintf("Hello World %s %d", os.Getenv("ENV_TEST"), valSync))
	})

	log.Fatalln(e.Start(":1337"))
}
