
# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$env:PATH = "/home/maki/Flutter/flutter/bin:/home/maki/.cargo/bin:/home/maki/.local/bin:/usr/local/cuda/bin:" + $env:PATH

$env:PATH = "/home/maki/.local/share/coursier/bin:/home/maki/Cloned/emsdk:/home/maki/Cloned/emsdk/upstream/emscripten:" + $env:PATH

[System.Environment]::SetEnvironmentVariable("CHROME_EXECUTABLE", "chromium-browser")
[System.Environment]::SetEnvironmentVariable("EDITOR", "nvim")

oh-my-posh init pwsh | Invoke-Expression
Invoke-Expression (&starship init powershell)

Set-Alias -Name open -Value xdg-open

function ls 
{
	eza -a --icons
}

function ll 
{
	eza -al --icons
}

function lt
{
	eza -a --tree --level=1 --icons
}

function cmkdir
{
	param (
		$directory
	)
	New-Item -ItemType Directory -Name $directory
	Set-Location ./$directory
}

Set-Alias -Name nvide -Value ~/Applications/neovide.AppImage

function cbt
{
	Write-Output "CBT: Think about your feelings!"
}

