# Copyright (c) Brandon Pacewic
# SPDX-License-Identifier: MIT

# Enable git posh
Import-Module posh-git

# Enable git posh autocomplete
function Set-PoshGitStatus {
    $global:GitStatus = Get-GitStatus
    $env:POSH_GIT_STRING = Write-GitStatus -Status $global:GitStatus
}
New-Alias -Name 'Set-PoshContext' -Value 'Set-PoshGitStatus' -Scope Global -Force

$GitPromptSettings.DefaultPromptPath = ''
$GitPromptSettings.DefaultPromptSuffix = ''

# Shorten prompt to only show current directory
function prompt {
    $gitPrompt = & $GitPromptScriptBlock
    $p = $gitPrompt
    $p += Split-Path -leaf -path (Get-Location)
    "$p> "
}
