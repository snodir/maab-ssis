Set-ExecutionPolicy remoteSigned
Import-Module SQLPS
Invoke-Sqlcmd "insert into CustomerAllAtOnceThroughPowerShell values('Jack', 'Stuttgart')" -ServerInstance 'DESKTOP-20RAN2E'  -Database 'SSISwithBek'

$file_array = Get-ChildItem -Path d:\source\Flat_subsource\
foreach($each_file in $file_array)
{
    $cust_text = Import-Csv -Path $each_file.FullName
    foreach($each_row in $cust_text)
    {
        $name = $each_row.name
        $city = $each_row.city
        Invoke-Sqlcmd -Query "insert into CustomerAllAtOnceThroughPowerShell values('$name', '$city')" -ServerInstance 'DESKTOP-20RAN2E' -Database 'SSISwithBek'
    }
}
