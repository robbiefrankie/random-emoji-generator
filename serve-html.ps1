@echo off

rem Clone the repository
git clone https://github.com/robbiefrankie/random-emoji-generator.git
cd random-emoji-generator

rem Install dependencies (assuming you have a package.json with necessary dependencies)
npm install

rem Validate HTML, CSS, and JS
htmlhint "**/*.html"
stylelint "**/*.css"
eslint "**/*.js"

echo "Build complete. HTML, CSS, and JS files are validated."
