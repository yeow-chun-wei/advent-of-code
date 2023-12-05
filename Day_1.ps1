$input = @(Get-Content -Path .\Day_1-Input.txt)
[int]$total = 0
foreach ($item in $input)
{
    $digits = $item -replace "[^0-9]", ''
    $fnl = $digits[0,-1] -join ''
    Write-Host $fnl
    $total = $total+$fnl
}
Write-Host 'Total = '$total 