<#
    .EXAMPLE
    Configure only centoso.com for the DNS Suffix
#>
configuration Example
{
    param
    (
        [string[]] $NodeName = 'localhost'
    )

    Import-DscResource -Module xNetworking

    Node $NodeName
    {
        xDnsClientGlobalSetting AddDNSSuffix
        {
            IsSingleInstance = 'Yes'
            SuffixSearchList = 'centoso.com'
            UseDevolution    = $true
            DevolutionLevel  = 0
        }
    }
}
