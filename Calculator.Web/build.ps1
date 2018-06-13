param([String]$slnPath=".\Calculator.Web.sln",[string]$vsFolderName="Calculator.Web")

$slnContent=Get-Content $slnPath
$folderLine=$slnContent | ?{$_.Contains("2150E333-8FDC-42A3-9474-1A3956D46DE8")} | ?{$_.Contains($VsFolderName)}

 $guid = $folderLine.Split(", ")[-1].Replace('"',"")

 $csprojGuids=$slnContent | ?{$_.Contains("="+$guid)}  | %{$_.Split("=")[-2].Trim()}

 for($i=0; $i -lt $csprojGuids.count; $i++)
 {
    $toFind = $csprojGuids[$i]
    $def = $slnContent | ?{$_.Contains("Project")} | ?{$_.Contains($csprojGuids[$i])} | %{$_.Split(",")[-2].Trim().Replace('"','')}
    Write-Host "building" $def
    C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe $def
}