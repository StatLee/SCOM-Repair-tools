#--------------------------------------------
# Declare Global Variables and Functions here
#--------------------------------------------


#Sample function that provides the location of the script
function Get-ScriptDirectory
{ 
	if($hostinvocation -ne $null)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory
Set-Variable -Name path -Scope Global -Value 'D:\Program Files\System Center 2012\Operations Manager\Server'
Set-Variable -Name SCOMpath -Scope Global -Value 'D:\Program Files\System Center 2012\Operations Manager\Server'
Set-Variable -Name MPSelect -Scope Global -Value ''
Set-Variable -Name SCOMAccounttemp -Scope Global -Value ''
Set-Variable -Name SCOMPasswordtemp -Scope Global -Value ''
Set-Variable -Name servicenametemp -Scope Global -Value ''
