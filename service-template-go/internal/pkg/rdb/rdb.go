package rdb

import (
	"fmt"
	"github.com/redis/go-redis/v9"
	"service-template-go/internal/pkg/config"
)

var Rdb *redis.Client

func init() {
	redisConfig := config.GetRedisConfig()
	Rdb = redis.NewClient(&redis.Options{
		Addr:     fmt.Sprintf("%s:%s", redisConfig.Host, redisConfig.Port),
		Password: redisConfig.Password,
	})
}
