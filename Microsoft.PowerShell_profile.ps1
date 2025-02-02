# Git CLone Functions

function ghc {
    param (
        [string]$repo
    )
    git clone "https://github.com/$repo.git"
}

function ggc {
    param (
        [string]$repo
    )
    git clone "https://git.gay/$repo.git"
}

function glc {
    param (
        [string]$repo
    )
    git clone "https://gitlab.com/$repo.git"
}

function md5    { Get-FileHash -Algorithm MD5 $args }
function sha1   { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }

function prompt 
{ 
    $location = (Get-Location).Path
    $userProfile = [Environment]::GetFolderPath("UserProfile")
    $location = $location -replace [regex]::Escape($userProfile), '~'
    
    $resetColor = "`e[0m"
    $locationColor = "`e[32m"  # Green
    $promptColor = "`e[36m"    # Aqua

    if ($isAdmin) 
    {
        "$promptColor pwsh > $locationColor[$location] $resetColor# " 
    }
    else 
    {
        "$promptColor pwsh > $locationColor[$location] $resetColor$ "
    }
}

function speed {bunx speed-cloudflare-cli}