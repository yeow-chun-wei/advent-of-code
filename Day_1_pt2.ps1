$input = @(Get-Content -Path .\Day_1-Input.txt)
[int]$total = 0
$line = 0
foreach ($item in $input)
{
    Write-Host $item`
    $item = $item -replace 'oneight', '8'
    $item = $item -replace 'threeight', '8'
    $item = $item -replace 'fiveight', '8'
    $item = $item -replace 'sevenine', '9'
    $item = $item -replace 'one', '1'
    $item = $item -replace 'two', '2'
    $item = $item -replace 'three', '3'
    $item = $item -replace 'four', '4'
    $item = $item -replace 'five', '5'
    $item = $item -replace 'six', '6'
    $item = $item -replace 'seven', '7'
    $item = $item -replace 'eight', '8'
    $item = $item -replace 'nine', '9'
    $digits = $item -replace "[^0-9]", ''
    $fnl = $digits[0,-1] -join ''
    Write-Host $total " + " $fnl " = "
    $total = $total+$fnl
    Write-Host $total "----------------"
}
Write-Host 'Total = '$total 