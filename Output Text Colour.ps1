
Function Write-Col([String[]]$Text, [ConsoleColor[]]$Color,$BackColor) {
    for ($i = 0; $i -lt $Text.Length; $i++) {
        Write-Host $Text[$i] -Foreground $Color[$i] -BackgroundColor $BackColor[$i] -NoNewLine
    }
    Write-Host
}

$VMSwitch1 = "vSwitch 2"
#Write-Col -Text "Creating", "`n`t vSphere Std", "`n`t`t Switch ", "`n`t`t`t $VMSwitch1`n" -Color Red,Green,Yellow,Cyan -BackColor Yellow,Cyan,Green,Red

#Write-Col -Text "Creating", " vSphere Std", " Switch ", " $VMSwitch1 " -Color Cyan,Cyan,Cyan,Yellow -BackColor Blue,Blue,Blue,DarkGreen

Write-Col -Text "Creating vSphere Std Switch ", " $VMSwitch1 " -Color Cyan,Yellow -BackColor Blue,DarkGreen
