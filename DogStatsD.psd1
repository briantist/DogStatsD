#
# Module manifest for 'DogStatsD' module
# Created by: Akos Murati <akos@murati.hu>
# Generated on: 02/18/2017
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'DogStatsD.psm1'

# Version number of this module.
ModuleVersion = '1.1.0.0'

# ID used to uniquely identify this module
GUID = 'a2c94f92-cfb1-4f8f-8cc8-7a77b2122b0d'

# Author of this module
Author = 'Akos Murati (akos@murati.hu)'

# Company or vendor of this module
CompanyName = 'murati.hu'

# Copyright statement for this module
Copyright = '(c) 2017 murati.hu . All rights reserved.'

# Description of the functionality provided by this module
Description = @'
Lightweight PowerShell module to send DataDog metrics and events
via DogStatsD custom UDP protocol.
'@

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = @(
    "Send-StatsD"
    "Send-DataDogEvent"
    "Send-DataDogMetric"
)

# Cmdlets to export from this module
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module
AliasesToExport = @(
    "Send-DogStatsD"
    "Send-DataDogStatsD"
)

# DSC resources to export from this module
#DscResourcesToExport = @()

# List of all modules packaged with this module
ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @(
            'DataDog',
            'DogStatsD',
            'Send', 'Report',
            'Event', 'Alert', 'Warning', 'Info',
            'Metric', 'Metrics', 'Sample', 'Rate', 'Value',
            'Counter', 'Gauge', 'Histogram', 'Timer', 'Set',
            'StatsD', 'Stats', 'UDP', 'Data', 'Dog'
        )

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/murati-hu/DogStatsD/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/murati-hu/DogStatsD'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/murati-hu/DogStatsD/releases'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://github.com/murati-hu/DogStatsD'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
