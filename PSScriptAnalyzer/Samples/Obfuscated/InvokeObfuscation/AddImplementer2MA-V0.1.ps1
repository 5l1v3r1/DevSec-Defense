Im`PORt-m`o`D`uLE smlets

# Manual Activity ID
$MA = 'MA121'

#Display Name of Implementer
$Implementer = "Peter Pan"

# Get Manual Activity Class
$MAclass = g`ET`-sc`sMCL`ASS -Name  System.WorkItem.Activity.ManualActivity$
#Get Manual Activity by ID
$MAObject = get-s`C`s`moB`jeCt -Class $MAclass -Filter "ID -eq $MA"
#Get AD User Class
$UserClass = gET-s`CSM`Cl`ASS -Name Microsoft.AD.User$
#Get User by displayname
$User = G`Et-`Scs`mo`BJECT -Class $UserClass �Filter "DisplayName -eq $Implementer"
#Get Relationship Manual Activity - Implementer
$ImplementerRelationship = G`et-SCSMrel`AtI`oNshiP`cLaSs -Name System.WorkItemAssignedToUser$
#Create a new Relationship Object Manual Activity - User (Implementer)
NEw-SCsM`ReLA`TIo`NsHIp`oBJ`ECT -RelationShip $ImplementerRelationship -Source $MAObject -Target $User -Bulk

Re`movE`-M`ODuLE smlets -Force
