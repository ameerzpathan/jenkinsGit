$rootFolder="C:\Users\ameer.pathan\Documents\GitHub\nugetDemo"
$tempVariable=$rootFolder
$files=Get-ChildItem -Path $rootFolder


$tempFolderRoot="C:\temp\"
$date=Get-Date
$date=$date.ToString("yyyy-MM-dd")
$tempFinalFolder="$tempFolderRoot$date"
New-Item -ItemType Directory -Path $tempFinalFolder -Force

#$timespan=New-TimeSpan -days 7

foreach($file in $files)
{
    $fileLastModifieddate = $file.LastWriteTime
	if(Get-Date)
	{
		Move-Item "$rootFolder\$file" -destination $tempFinalFolder -Force
	}
}

$CompressionToUse=[System.IO.Compression.CompressionLevel]::Optimal  
$IncludeBaseFolder=$false
$zipTo="{0}\Archive_{1}.zip" -f $rootFolder,$date

[Reflection.Assembly]::LoadWithPartialName("System.IO.Compression.FileSystem")
[System.IO.Compression.ZipFile]::CreateFromDirectory($tempFinalFolder,$zipTo,$CompressionToUse,$IncludeBaseFolder)

#Remove-Item $tempFinalFolder -RECURSE