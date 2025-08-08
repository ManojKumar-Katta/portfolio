@echo off
REM Portfolio Build and Deploy Script for Windows
REM Author: Katta Manoj Kumar

echo 🚀 Building Manoj Kumar's Portfolio...

REM Check if Docker is installed
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Docker is not installed. Please install Docker Desktop first.
    pause
    exit /b 1
)

REM Check if Docker Compose is available
docker-compose --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [WARNING] Docker Compose not found. Trying with 'docker compose'...
    set DOCKER_COMPOSE=docker compose
) else (
    set DOCKER_COMPOSE=docker-compose
)

echo [INFO] Stopping existing containers...
%DOCKER_COMPOSE% down

echo [INFO] Building Docker image...
docker build -t manoj-portfolio:latest .
if %errorlevel% neq 0 (
    echo [ERROR] Failed to build Docker image!
    pause
    exit /b 1
)

echo [SUCCESS] Docker image built successfully!

echo [INFO] Starting portfolio website...
%DOCKER_COMPOSE% up -d
if %errorlevel% neq 0 (
    echo [ERROR] Failed to start the portfolio!
    pause
    exit /b 1
)

echo [SUCCESS] Portfolio is now running!
echo.
echo 🌐 Portfolio URL: http://localhost:8080
echo 📊 Health Check: http://localhost:8080/health
echo.
echo To view logs: %DOCKER_COMPOSE% logs -f
echo To stop: %DOCKER_COMPOSE% down
echo.
echo [SUCCESS] ✨ Portfolio deployment completed successfully!

pause
