$input = @(Get-Content -Path .\Day_2-Input.txt)
$total = 0

foreach ($item in $input)
{
    [int]$red=0
    [int]$green=0
    [int]$blue=0

    $item = $item -replace ",", ''
    $item = $item -replace ";", ''
    $item = $item -replace ":", ''
    $line = $item.Split(" ")
    #Write-Host "0 " $line[0] " | 1 " $line[1] " | 2 " $line[2] " | 3 " $line[3]

    for($i=3; $i -lt $line.Length; $i++)
    {
        if($line[$i] -eq "red")
        {
            if($red -lt $line[$i-1])
            {
                $red = $line[$i-1]
            }
        }
        elseif($line[$i] -eq "green")
        {
            if($green -lt $line[$i-1])
            {
                $green = $line[$i-1]
            }
        }
        elseif($line[$i] -eq "blue")
        {
            if($blue -lt $line[$i-1])
            {
                $blue = $line[$i-1]
            }
        }
        $i++
    }
    [int]$red_int = $red
    [int]$green_int = $green
    [int]$blue_int = $blue
    $sum = $red * $green * $blue
    Write-Host $red"*"$green"*"$blue"="$sum
    $total=$total+$sum
}

Write-Host "Total: "$total