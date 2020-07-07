
<#
.SYNOPSIS
    Sends an event to DataDog
.DESCRIPTION
    PowerShell cmdlet to send events to DataDog via DogStatsD
    UDP datagram. Format as per described at:
    - http://docs.datadoghq.com/guides/dogstatsd/#events-1

.PARAMETER Title
    Mandatory Title of the Event
.PARAMETER Text
    Optional Event body text
.PARAMETER AlertType
    Optional type of the event:
        'info','success','warning','error'
    Default is info
.PARAMETER Priority
    Priority of the event: normal or low
.PARAMETER Tag
    List of tag definitions for the metric in "tagname:value" format
.PARAMETER ComputerName
    Optional - ComputerName (Hostname or IPaddress) of the
    target statsd service
        Default is 127.0.0.1 for localhost
.PARAMETER Port
    Optional - Port for the target statsd service
        Default is 8125
.EXAMPLE
    Send-DataDogEvent -Title 'My event' -Text 'Add any details' -Tag @("subsytem:my_test_tag1")
#>
function Send-DataDogEvent {
    [CmdletBinding(SupportsShouldProcess=$true)]
    param(
        [Parameter(Mandatory)]
        [string]$Title,

        [Parameter()]
        [string]$Text='',

        [Parameter()]
        [string]$ComputerName,

        [Parameter()]
        [ValidateRange(1,65535)]
        [int]$Port,

        [Parameter()]
        [ValidateSet('normal','low')]
        [string]$Priority='normal',

        [Parameter()]
        [string]$SourceType,

        [Parameter()]
        [ValidateSet('info','success','warning','error')]
        [string]$AlertType='info',

        [Parameter()]
        [string[]]$Tag=@()
    )

    $data = "_e{$($Title.Length),$($Text.Length)}:$Title|$Text|h:$ComputerName|p:$Priority|t:$AlertType|#$([string]::Join(',',$Tag))"
    $statsdParams = @{
        Data = $data
    }
    if ($ComputerName) {
        $statsdParams.ComputerName = $ComputerName
    }
    if ($Port) {
        $statsdParams.Port = $Port
    }

    $statsdParams
    if ($PSCmdlet.ShouldProcess("Sending DataDog event: $data")) {
        Send-StatsD @statsdParams
    }
}
