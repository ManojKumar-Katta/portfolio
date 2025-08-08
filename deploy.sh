#!/bin/bash

# Portfolio Build and Deploy Script
# Author: Katta Manoj Kumar

echo "🚀 Building Manoj Kumar's Portfolio..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    print_error "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    print_warning "Docker Compose not found. Trying with 'docker compose'..."
    DOCKER_COMPOSE="docker compose"
else
    DOCKER_COMPOSE="docker-compose"
fi

print_status "Stopping existing containers..."
$DOCKER_COMPOSE down

print_status "Building Docker image..."
if docker build -t manoj-portfolio:latest .; then
    print_success "Docker image built successfully!"
else
    print_error "Failed to build Docker image!"
    exit 1
fi

print_status "Starting portfolio website..."
if $DOCKER_COMPOSE up -d; then
    print_success "Portfolio is now running!"
    echo ""
    print_status "🌐 Portfolio URL: http://localhost:8080"
    print_status "📊 Health Check: http://localhost:8080/health"
    echo ""
    print_status "To view logs: $DOCKER_COMPOSE logs -f"
    print_status "To stop: $DOCKER_COMPOSE down"
else
    print_error "Failed to start the portfolio!"
    exit 1
fi

echo ""
print_success "✨ Portfolio deployment completed successfully!"
