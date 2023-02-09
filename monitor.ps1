$ChkSvc=(Get-service -name "w32time" -ErrorAction SilentlyContinue)
if($ChkSvc.Status -eq "Running")
{
echo service already running
exit 0
}
else
{
echo "<-Start Result->"
echo "CSMon_Result= w32time not error not active"
echo "<-End Result->"
exit 1
}
if("$Error" -ne "$null")
{
echo "<-Start Result->"
echo "CSMon_Result= w32time error not installed"
echo "<-End Result->"
exit 1
}
echo "Test output"