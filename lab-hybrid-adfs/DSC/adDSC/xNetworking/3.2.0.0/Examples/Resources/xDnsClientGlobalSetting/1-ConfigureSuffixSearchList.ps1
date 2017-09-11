<#
    .EXAMPLE
    Configure only centoso.tk for the DNS Suffix
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
            SuffixSearchList = 'centoso.tk'
            UseDevolution    = $true
            DevolutionLevel  = 0
        }
    }
}
