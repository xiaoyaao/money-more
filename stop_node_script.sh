#!/bin/bash

PID_FILE="/tmp/myScript.pid"

if [ -f $PID_FILE ]; then
  PID=$(cat $PID_FILE)
  echo "Stopping Node.js script with PID: $PID"
  kill $PID
  rm $PID_FILE
else
  echo "PID file not found. Is the script running?"
fi
