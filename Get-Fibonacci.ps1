
function Get-Fibonacci{
  [cmdletbinding()]
  Param (
    [parameter()]
    [int]$Num,
    [parameter()]
    [switch]$ZeroStart
  )

  if ($PSBoundParameters.ContainsKey('ZeroStart')) {
    $Result = 0
    $J = 2
    $Val1 = 0
    $Val2 = 1
    $Total = $Num
  }
  else {
    $Result = 1
    $J = 1
    $Val1 = 1
    $Val2 = 0
    $Total = $Num - 1
  }

  Write-Output $Result

  ## Loops through each value till $Num value is reached
  for ($i = $J; $i -le $Total; $i++) {
    $Result = $Val1 + $Val2
    if ($Result -eq 0) {
      $Result = 1
    }
    Write-Output $Result
    $Val2 = $Val1
    $Val1 = $Result
  }
}
## Example
#Get-Fibonacci -Num 3 -ZeroStart
#>0
#>1
#>1

#Get-Fibonacci -Num 5
#1
#1
#2
#3
#5