#!/bin/bash
# Helper script to load environment variables from .env file

if [ ! -f .env ]; then
    echo "Error: .env file not found!"
    echo "Please create a .env file in the root directory."
    echo "See README.md for required environment variables."
    return 1 2>/dev/null || exit 1
fi

# Enable automatic export of variables
set -a
# Source the .env file
source .env
# Disable automatic export
set +a

echo "Environment variables loaded from .env"

