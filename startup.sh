#!/bin/bash
uvicorn src.infra.api.main:app --host 0.0.0.0 --port 8000
