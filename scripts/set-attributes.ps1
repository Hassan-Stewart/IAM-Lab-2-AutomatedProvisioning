<#
Script: set-attributes.ps1
Purpose: Enrich Active Directory user attributes such as
         Department and Title after initial provisioning.
#>

# Import user data from CSV
$users = Import-Csv "C:\Lab2\users.csv"

# Loop through each user and update attributes
foreach ($user in $users) {

    # Update Department and Title
    Set-ADUser -Identity $user.SamAccountName `
        -Department $user.Department `
        -Title $user.Title
}