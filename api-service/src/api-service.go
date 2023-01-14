package main

import "github.com/gin-gonic/gin"

// APIサーバーの実装
func main() {
	r := gin.Default()
	// ハンドラーの登録
	r.GET("/message", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "hello",
		})
	})
	r.Run(":8080")
}
