# Get it
$path = [System.Environment]::GetEnvironmentVariable(
    'PSModulePath',
    'Machine'
)
# Remove unwanted elements
$path = ($path.Split(';') #| Where-Object { $_ -ne '' }) -join ';'
exit


# Set it
[System.Environment]::SetEnvironmentVariable(
    'PATH',
    $path,
    'Machine'
)