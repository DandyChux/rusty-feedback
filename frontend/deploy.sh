#!/bin/zsh

# Exit immediately if a command exits with a non-zero status.
set -e

# Print each command to stdout before executing it.
set -x

# 1. Install Rust (uncomment and modify if necessary)
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# source $HOME/.cargo/env

# 2. Build the project
# Clean the previous build
cargo clean
# Build the project in release mode
cargo build --release

# Copy artifacts to the deployment directory
# Create the dist directory if it doesn't exist
mkdir -p dist
# Copy the build artifacts to the dist directory
cp -R ../target/release/* dist/