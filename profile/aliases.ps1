# Shortcuts
${function:g} = { git @args }
${function:h} = { Get-History @args }
${function:j} = { Get-Job @args }
${function:v} = { nvim @args }

# List all files
${function:l} = { Get-ChildItem @args }

# List all files, including dot files
${function:la} = { Get-ChildItem -Force @args }

# List only directories
${function:lsd} = { Get-ChildItem -Directory @args }
