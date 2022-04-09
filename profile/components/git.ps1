if (((Get-Command git -ErrorAction SilentlyContinue) -ne $null) -and ((Get-Module -ListAvailable Posh-Git -ErrorAction SilentlyContinue) -ne $null)) {
  Import-Module Posh-Git
}

# Override posh-git settings
$s = $global:GitPromptSettings
$s.PathStatusSeparator = " "
$s.BeforeStatus = "["
$s.DelimStatus = " |"
$s.AfterStatus = "]"
$s.BeforePath = ""
$s.AfterPath = ""
$s.BeforeIndex = ""
$s.BeforeStash = " ("
$s.AfterStash = ")"
$s.LocalDefaultStatusSymbol = ""
$s.LocalWorkingStatusSymbol = "!"
$s.LocalStagedStatusSymbol = "~"
$s.BranchGoneStatusSymbol = "×"
$s.BranchIdenticalStatusSymbol = "≡"
$s.BranchAheadStatusSymbol = "↑"
$s.BranchBehindStatusSymbol = "↓"
$s.BranchBehindAndAheadStatusSymbol = "↕"
