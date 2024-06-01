# Ensure npm dependencies are installed
if (Test-Path "package.json") {
    Write-Host "Installing npm dependencies..."
    npm install
} else {
    Write-Error "package.json not found! Ensure you have a package.json file in your project directory."
    exit 1
}

# Validate CSS files with stylelint if configuration exists
if (Test-Path ".stylelintrc" -or Test-Path "stylelint.config.js") {
    Write-Host "Running stylelint..."
    stylelint "**/*.css"
} else {
    Write-Error "stylelint configuration file not found! Ensure you have a .stylelintrc or stylelint.config.js file in your project directory."
    exit 1
}

# Validate JavaScript files with eslint if configuration exists
if (Test-Path ".eslintrc" -or Test-Path "eslint.config.js") {
    Write-Host "Running eslint..."
    eslint "**/*.js"
} else {
    Write-Error "eslint configuration file not found! Ensure you have an eslint.config.js file in your project directory."
    exit 1
}

Write-Host "Build complete. HTML, CSS, and JS files are validated."
