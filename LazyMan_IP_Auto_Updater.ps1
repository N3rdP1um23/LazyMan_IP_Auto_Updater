#################################################
#                                               #
#               N3rdP1um23                      #
#             March 26, 2019                    #
#            Lazyman IP Update                  #
#                                               #
#       This script is used to update           #
#      the Lazyman IPs in the hosts file        #
#                                               #
#################################################


## Variables
$HostFile = "$($env:windir)\system32\Drivers\etc\hosts"
$LazymanURL = "powersports.ml"
$LazymanHostsIP = ""
$LazymanCurrentIP = ""

## Grab the current stored IP address and ping for the current one
$LazymanHostsIP = Get-Content $HostFile | ForEach-Object { if($_ -match $LazymanURL) { $_.replace("#$($LazymanURL)-", "") }}
$LazymanCurrentIP = (Test-Connection $LazymanURL -count 1).IPV4ADDRESS.IPAddressToString

## Check if the Current IP is different than the stored one
if ($LazymanCurrentIP -ne $LazymanHostsIP) {
    ## Update the Hosts File with the new IP
    Write-Host "Updates Are Being Applied"
    (Get-Content $HostFile).replace($LazymanHostsIP, $LazymanCurrentIP) | Set-Content $HostFile
}else{
    ## Display That the script is not updating
    Write-Host "No Updates To Be Performed"
}
