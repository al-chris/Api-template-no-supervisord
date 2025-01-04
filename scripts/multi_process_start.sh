#!/bin/bash

# turn on bash's job control
set -m

# Start the prestart

if ./scripts/prestart.sh; then
    echo "$(date): Prestart script executed successfully" | tee -a script.log
else
    echo "$(date): Prestart script failed with exit code $?" | tee -a script.log
    exit 1
fi

# Start the main process
echo "$(date): Starting FastAPI application..." | tee -a script.log
fastapi run --workers 4 app/main.py | tee -a script.log 2>&1
