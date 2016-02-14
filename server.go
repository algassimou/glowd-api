package main

import "github.com/gin-gonic/gin"

func main() {
	router := gin.Default()
	router.GET("/", func(c *gin.Context) {
		content := gin.H{"Hello": "World"}
		c.JSON(200, content)
	})

	// Listen and server on 0.0.0.0:8080
	router.Run(":8080")
}
