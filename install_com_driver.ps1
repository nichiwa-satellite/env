Invoke-WebRequest http://www.ftdichip.com/Drivers/CDM/CDM%20v2.12.24%20WHQL%20Certified.zip -UseBasicParsing -OutFile 'CDM v2.12.24 WHQL Certified.zip'

Expand-Archive "CDM v2.12.24 WHQL Certified.zip"

cd 'CDM v2.12.24 WHQL Certified'

rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 ftdibus.inf
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 ftdiport.inf
