#!/bin/bash
cd /home/site/wwwroot
export PYTHONPATH="/home/site/wwwroot:${PYTHONPATH}"
python -m uvicorn src.infra.api.main:app --host 0.0.0.0 --port 8000
