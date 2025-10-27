#!/usr/bin/env sh
set -eu

HOST="${REDIS_HOST:-127.0.0.1}"
PORT="${REDIS_PORT:-6379}"

# redis-cli automatically uses REDISCLI_AUTH environment variable for authentication
# No need to pass -a flag explicitly

# Set key-value pairs
redis-cli -h "$HOST" -p "$PORT" SET user:1:name "John Doe"
redis-cli -h "$HOST" -p "$PORT" SET user:1:email "john@example.com"

redis-cli -h "$HOST" -p "$PORT" SET user:2:name "Jane Smith"
redis-cli -h "$HOST" -p "$PORT" SET user:2:email "jane@example.com"

redis-cli -h "$HOST" -p "$PORT" SET user:3:name "Bob Johnson"
redis-cli -h "$HOST" -p "$PORT" SET user:3:email "bob@example.com"

redis-cli -h "$HOST" -p "$PORT" SET user:4:name "Alice Williams"
redis-cli -h "$HOST" -p "$PORT" SET user:4:email "alice@example.com"

redis-cli -h "$HOST" -p "$PORT" SET user:5:name "Charlie Brown"
redis-cli -h "$HOST" -p "$PORT" SET user:5:email "charlie@example.com"

redis-cli -h "$HOST" -p "$PORT" SET user:6:name "Diana Prince"
redis-cli -h "$HOST" -p "$PORT" SET user:6:email "diana@example.com"
