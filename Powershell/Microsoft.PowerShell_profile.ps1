# Copyright (c) Brandon Pacewic
# SPDX-License-Identifier: MIT

# Shorten prompt to only show current directory
function prompt {
  $p = Split-Path -leaf -path (Get-Location)
  "$p> "
}
