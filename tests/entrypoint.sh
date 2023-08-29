#!/bin/sh

# Restart SSH after applying SSH configurations
service ssh restart

# Execute the CMD
exec "$@"