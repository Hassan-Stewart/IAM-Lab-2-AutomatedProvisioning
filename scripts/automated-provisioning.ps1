<#
Script: automated-provisioning.ps1
Purpose: Create new Active Directory users using identity data
         imported from a CSV file. This script automates the
         provisioning process by looping through each record.
#>

# Import user data from CSV
$users = Import-Csv "C:\Lab2\users.csv"

# Loop through each user and create the account
foreach ($user in $users) {

    # Create the AD user with required attributes
    New-ADUser `
        -GivenName $user.'First Name' `
        -Surname $user.'Last Name' `
        -SamAccountName $user.SamAccountName `
        -Name "$($user.'First Name') $($user.'Last Name')" `
        -Department $user.Department `
        -Title $user.Title `
        -AccountPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) `
        -Enabled $true
}