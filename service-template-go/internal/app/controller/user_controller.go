package controller

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"service-template-go/internal/app/domain/incoming_http"
)

func AddUserRoutes(rg *gin.RouterGroup) {
	userGroup := rg.Group("/user")

	userGroup.POST("/", func(context *gin.Context) {
		context.JSON(http.StatusOK, Success(&incoming_http.UserVO{
			Name: "jeb",
			Age:  27,
		}))
	})
}
