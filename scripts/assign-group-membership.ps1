<#
Script: assign-group-membership.ps1
Purpose: Assign users to the appropriate security group
         to apply RBAC permissions in Active Directory.
#>

# Import user data from CSV
$users = Import-Csv "C:\Lab2\users.csv"

# Loop through each user and add them to the group
foreach ($user in $users) {

    # Add user to the Lab2-Users security group
    Add-ADGroupMember -Identity "Lab2-Users" -Members $user.SamAccountName
}