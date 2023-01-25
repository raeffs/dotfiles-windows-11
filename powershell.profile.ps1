
Function .. { Set-Location .. }

Function Open-Explorer {
  Param(
    [string]$path='.'
  )

  explorer $path
}

Function Open-VsCode {
  Param(
    [string]$path='.'
  )

  code $path
}

Set-Alias -Name e -Value Open-Explorer
Set-Alias -Name c -Value Open-VsCode
Set-Alias -Name g -Value git

Import-Module -Name Terminal-Icons
Import-Module -Name posh-git

oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/raeffs/dotfiles-windows-11/main/oh-my-posh.config.json' | Invoke-Expression

$PSStyle.Formatting.TableHeader = "`e[3;37m"
