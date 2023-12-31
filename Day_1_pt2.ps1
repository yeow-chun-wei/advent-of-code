$input = @(Get-Content -Path .\Day_1-Input.txt)
$input2 = @(Get-Content -Path .\Day_1-Input.txt)
[int]$total = 0

foreach ($item in $input)
{
    #Write-Host $item
    $item = $item -replace 'nineight', '9'
    $item = $item -replace 'eightwo', '8'
    $item = $item -replace 'eighthree', '8'
    $item = $item -replace 'twone', '2'
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
    $fnl = $digits[0] -join ''
    Write-Host $fnl
    $total = $total+($fnl*10)
    Write-Host $total
    
}
foreach ($item in $input2)
{
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
    $fnl = $digits[-1] -join ''
    Write-Host $fnl
    $total = $total+$fnl
    Write-Host $total
}


Write-Host 'Total = '$total 