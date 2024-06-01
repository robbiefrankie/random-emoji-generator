#!/bin/sh
set -e
HTML_DIR="."
PORT=8000
echo "Serving HTML file on http://localhost:$PORT"
python3 -m http.server --directory $HTML_DIR $PORT
