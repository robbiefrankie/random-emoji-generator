$HTML_DIR = "."
$PORT = 8000
Write-Output "Serving HTML file on http://localhost:$PORT"
python -m http.server --directory $HTML_DIR $PORT
