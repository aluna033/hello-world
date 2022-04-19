$datadisk = Get-Disk | Where partitionstyle -eq ‘raw’
Initialize-Disk -Number $datadisk.Number -PartitionStyle MBR
New-Partition -DiskNumber $datadisk.Number -DriveLetter N -UseMaximumSize
$datadiskpart = Get-Partition -DiskNumber $datadisk.Number
Format-Volume -DriveLetter $datadiskpart.DriveLetter -FileSystem NTFS -NewFileSystemLabel “dataDisk” -Confirm:$false
