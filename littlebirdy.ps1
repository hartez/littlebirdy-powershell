 <#
    .SYNOPSIS 
		Strips permissions from PDF files using GhostScript
    .EXAMPLE
		littlebirdy.ps1 file1 file2 file3 ...
  #>

# GhostScript path - you may have to change this depending on your installation
$gspath = "C:\Program Files\gs\gs9.06\bin\gswin64.exe"

# Make sure GhostScript is installed
if(!(Test-Path $gspath)) {
	Write-Host "GhostScript is not installed at $gspath"
}

$FONTPATH = (Get-ChildItem env:WINDIR).Value + "\fonts"

foreach($f in $args) {
	if(!(Test-Path $f)) {
		Write-Host ($f + " not found.")
		return
	}
}

foreach($f in $args) {
	$RandomName = (Get-Item $f).BaseName + (Get-Random) + (Get-Item $f).Extension

	$UNLOCKED_PATH = (Split-Path (Get-Item $f).FullName -Parent) + "\" + $RandomName

	& $gspath -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite ('-sFONTPATH=' + $FONTPATH) `
	-dPDFSettings=/prepress ('-sOutputFile=' + $UNLOCKED_PATH) -dPassThroughJPEGImages=true $f
}
