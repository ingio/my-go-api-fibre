package main

import (
	"log"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/logger"
)

func main() {
	app := fiber.New()

	// Routes
	app.Get("/health", health)
	app.Get("/hello", hello)

	// Middleware
	app.Use(logger.New())
	
	log.Fatal(app.Listen(":8080"))
}

// Handlers
func health(c *fiber.Ctx) error {
	return c.SendString("Health check ✅\n")
}
func hello(c *fiber.Ctx) error {
	return c.SendString("I made a ☕ for you!\n")
}
