<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2014 v4.1.63
	 Created on:   	2015/4/7 15:35
	 Created by:   	Stat
	 Organization: 	VMCloud
	 Filename:     	SCOMConnect.ps1
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
function scomconnect($servername,$account, $pass)
{
	$UserName = $account
	$UserPsw = $pass
	$pw = ConvertTo-SecureString $UserPsw -AsPlainText -force
	$cre = new-object -typename System.Management.Automation.PSCredential -argumentlist $UserName, $pw
	$Session = new-PSsession -Computername $servername -Credential $cre
	Import-PSSession -Session $Session -Prefix sco -Module OperationsManager -AllowClobber | Out-Null
}