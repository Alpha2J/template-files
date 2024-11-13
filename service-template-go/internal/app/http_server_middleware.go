package app

import (
	"github.com/gin-gonic/gin"
	"service-template-go/internal/pkg/logger"
)

func IncomingRequestLoggingMiddleware() gin.HandlerFunc {
	return func(c *gin.Context) {
		method := c.Request.Method
		url := c.Request.URL.String()
		logger.Infof("Incomming Request, method: %s, url: %s", method, url)

		c.Next()
	}
}
