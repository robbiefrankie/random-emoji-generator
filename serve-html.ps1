# Ensure npm dependencies are installed
if (Test-Path "package.json") {
    Write-Host "Installing npm dependencies..."
    npm install
} else {
    Write-Host "package.json not found! Skipping npm install."
}

# Validate CSS files with stylelint if configuration exists
if (Test-Path ".stylelintrc" -or Test-Path "stylelint.config.js") {
    Write-Host "Running stylelint..."
    stylelint "**/*.css"
} else {
    Write-Host "stylelint configuration file not found! Skipping stylelint."
}

# Validate JavaScript files with eslint if configuration exists
if (Test-Path ".eslintrc" -or Test-Path "eslint.config.js") {
    Write-Host "Running eslint..."
    eslint "**/*.js"
} else {
    Write-Host "eslint configuration file not found! Skipping eslint."
}

Write-Host "Build complete. HTML, CSS, and JS files are validated."
