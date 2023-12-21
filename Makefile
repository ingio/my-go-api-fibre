start:
	@echo "Starting in go..."
	go run ./cmd

up:
	@echo "Starting Docker images..."
	docker compose up -d
	@echo "Docker images started!"

down:
	@echo "Stopping docker compose..."
	docker compose down
	@echo "Done!"

build:
	@echo "Building server binary..."
	env GOOS=linux CGO_ENABLED=0 go build -o server ./cmd
	@echo "Done!"

build_arm:
	@echo "Building server binary..."
	env GOARCH=arm64 GOOS=linux CGO_ENABLED=0 go build -o server ./cmd
	@echo "Done!"

build_start:
	@echo "Building server binary and starting server..."
	env GOOS=linux CGO_ENABLED=0 go build -o server ./cmd
	@echo "Build Done Starting server..."
	./server

up_build: build
	@echo "Stopping docker images (if running...)"
	docker compose down
	@echo "Building (when required) and starting docker images..."
	docker compose up --build -d
	@echo "Docker images built and started!"

up_buildarm: build_arm
	@echo "Stopping docker images (if running...)"
	docker compose down
	@echo "Building (when required) and starting docker images..."
	docker compose up --build -d
	@echo "Docker images built and started!"