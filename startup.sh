#!/bin/bash
cd /home/site/wwwroot
export PYTHONPATH="${PYTHONPATH}:$(pwd)"
echo "Current directory: $(pwd)"
echo "PYTHONPATH: $PYTHONPATH"
echo "Listing files:"
ls -la
echo "Checking for src directory:"
ls -la src/ || echo "src directory not found"
echo "Starting uvicorn..."
python -m uvicorn src.infra.api.main:app --host 0.0.0.0 --port 8000
