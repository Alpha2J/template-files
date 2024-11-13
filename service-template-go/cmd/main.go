package main

import (
	"runtime"
	"service-template-go/internal/app"
)

func main() {
	runtime.GOMAXPROCS(4)

	app.InitScheduler()
	app.InitHttp()
}
