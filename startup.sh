#!/bin/bash
export PYTHONPATH="${PYTHONPATH}:/home/site/wwwroot"
cd /home/site/wwwroot
uvicorn src.infra.api.main:app --host 0.0.0.0 --port 8000
