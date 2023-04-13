
$nrOfTestsWith500kb = 200;
$nrOfTestsWith1mb = 100;
$nrOfTestsWith5mb = 50;
$nrOfTestsWith10mb = 25;
$nrOfTestsWith20mb = 15;
$nrOfTestsWith50mb = 10;
$url500kb = "b96773custom.cloud.ut.ee/500KB.html"
$url1mb = "b96773custom.cloud.ut.ee/1MB.html"
$url5mb = "b96773custom.cloud.ut.ee/5MB.html"
$url10mb = "b96773custom.cloud.ut.ee/10MB.html"
$url20mb = "b96773custom.cloud.ut.ee/20MB.html"
$url50mb = "b96773custom.cloud.ut.ee/50MB.html"

# Test 1 
Write-Output ""
Write-Output "Test GET 500KB.html"
Write-Output ""
ab -n $nrOfTestsWith500kb -e .\custom\csv-get-500KB.csv $url500kb >> .\custom\get-500KB.txt

Write-Output "Mean Connection Time (ms)"
Get-Content .\custom\get-500KB.txt | grep "Total:" | awk '{print $3}'

Write-Output "Total Time taken for tests (seconds)"
Get-Content .\custom\get-500KB.txt | grep "Time taken for tests:" | awk '{print $5}'

Write-Output "Failed requests"
Get-Content .\custom\get-500KB.txt | grep "Failed requests:" | awk '{print $3}'



# Test 2 
Write-Output ""
Write-Output "Test GET 1MB.html"
Write-Output ""
ab -n $nrOfTestsWith1mb -e .\custom\csv-get-1MB.csv $url1mb >> .\custom\get-1MB.txt

Write-Output "Mean Connection Time (ms)"
Get-Content .\custom\get-1MB.txt | grep "Total:" | awk '{print $3}'

Write-Output "Total Time taken for tests (seconds)"
Get-Content .\custom\get-1MB.txt | grep "Time taken for tests:" | awk '{print $5}'

Write-Output "Failed requests"
Get-Content .\custom\get-1MB.txt | grep "Failed requests:" | awk '{print $3}'



# Test 3 
Write-Output ""
Write-Output "Test GET 5MB.html"
Write-Output ""
ab -n $nrOfTestsWith5mb -e .\custom\csv-get-5MB.csv $url5mb >> .\custom\get-5MB.txt

Write-Output "Mean Connection Time (ms)"
Get-Content .\custom\get-5MB.txt | grep "Total:" | awk '{print $3}'

Write-Output "Total Time taken for tests (seconds)"
Get-Content .\custom\get-5MB.txt | grep "Time taken for tests:" | awk '{print $5}'

Write-Output "Failed requests"
Get-Content .\custom\get-5MB.txt | grep "Failed requests:" | awk '{print $3}'



# Test 4 
Write-Output ""
Write-Output "Test GET 10MB.html"
Write-Output ""
ab -n $nrOfTestsWith10mb -e .\custom\csv-get-10MB.csv $url10mb >> .\custom\get-10MB.txt

Write-Output "Mean Connection Time (ms)"
Get-Content .\custom\get-10MB.txt | grep "Total:" | awk '{print $3}'

Write-Output "Total Time taken for tests (seconds)"
Get-Content .\custom\get-10MB.txt | grep "Time taken for tests:" | awk '{print $5}'

Write-Output "Failed requests"
Get-Content .\custom\get-10MB.txt | grep "Failed requests:" | awk '{print $3}'



# Test 5 
Write-Output ""
Write-Output "Test GET 20MB.html"
Write-Output ""
ab -n $nrOfTestsWith20mb -e .\custom\csv-get-20MB.csv $url20mb >> .\custom\get-20MB.txt

Write-Output "Mean Connection Time (ms)"
Get-Content .\custom\get-20MB.txt | grep "Total:" | awk '{print $3}'

Write-Output "Total Time taken for tests (seconds)"
Get-Content .\custom\get-20MB.txt | grep "Time taken for tests:" | awk '{print $5}'

Write-Output "Failed requests"
Get-Content .\custom\get-20MB.txt | grep "Failed requests:" | awk '{print $3}'



# Test 6 
Write-Output ""
Write-Output "Test GET 50MB.html"
Write-Output ""
ab -n $nrOfTestsWith50mb -e .\custom\csv-get-50MB.csv $url50mb >> .\custom\get-50MB.txt

Write-Output "Mean Connection Time (ms)"
Get-Content .\custom\get-50MB.txt | grep "Total:" | awk '{print $3}'

Write-Output "Total Time taken for tests (seconds)"
Get-Content .\custom\get-50MB.txt | grep "Time taken for tests:" | awk '{print $5}'

Write-Output "Failed requests"
Get-Content .\custom\get-50MB.txt | grep "Failed requests:" | awk '{print $3}'