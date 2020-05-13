<#
Use the below command to display the PS Module Locations
 $env:PSModulePath -split ";"

 The first line should be your personal module storage location.
 Create this folder if it doesnt exist then create a folder with the name of the module you want to save (each module must have its own folder)
 Now save the module in this new folder, give the module the same name as the folder and save it as a .psm1
#>


<#
Simple Module
This should be saved in the personal module folder you created, in its own folder
eg
    Personal Module folder : C:\Users\Stu\Documents\WindowsPowershell\Modules\StuTest\
    Module Name: StuTest.psm1

To check the module is loading use the below command and check the personal module location:
Get-Module -ListAvailable
#>
Function Get-BiosInfo
{
    Get-CimInstance -ClassName win32_Bios
}
Function Get-OSInfo
{
    Get-CimInstance -ClassName Win32_OperatingSystem
}


<#
Create a Module Manifest to document and annotate the module you have saved
The PowerShellVersion option ensures a min PowerShell version
#>
$Path = "H:\Documents\WindowsPowershell\Modules\SWTest\StuTest.psd1"

New-ModuleManifest -Path $Path `
                   -Author "Stuart Woods" `
                   -CompanyName "Stuart Woods" `
                   -Description "My TEST Module" `
                   -RootModule "StuTest.psm1" `
                   -ModuleVersion 1.1 `
                   -PowerShellVersion 5.0

Test-ModuleManifest -Path $Path | Select *