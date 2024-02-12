#!/bin/bash
cd /app/retool
python retool.py --update
python retool.py "$@"
