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

# Install trunk
cargo install trunk wasm-bindgen-cli

# Install wasm target
rustup target add wasm32-unknown-unknown

# Set environment variable
# export API_URL="https://rust-feedback-api.onrender.com"

# Build the project in release mode
trunk build --release