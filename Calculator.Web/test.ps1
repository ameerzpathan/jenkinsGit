$ProjectDir=".";
$PackagesDir = "$ProjectDir\packages"
$OutDir = ".\Calculator.test"

$nuget="$ProjectDir\nuget\nuget.exe"
& $nuget install NUnit.Runners -o $PackagesDir

#$nunit=".\packages\NUnit-2.6.4\NUnit-2.6.4\bin\nunit-console.exe"

#$nunit=".\packages\NUnit.ConsoleRunner.3.8.0\tools\nunit3-console.exe"

$nunit=".\packages\NUnit.Console-3.6.1\nunit3-console.exe"


$tests=(Get-ChildItem $OutDir -Recurse -Include Calculator.test.csproj)


& $nunit /noshadow /framework:"net-4.0" /xml:"$OutDir\TestResults.nunit.xml" $tests
& $nunit $tests --noheader --framework=net-4.5 --work=$OutDir 


