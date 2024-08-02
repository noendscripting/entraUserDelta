# Input bindings are passed in via param block.
       
param($Timer)
Connect-MgGraph -Identity -NoWelcome -Debug
invoke-mgGraphRequest -Method GET -Uri 'https://graph.microsoft.com/v1.0/users/delta?$select=id,manager,displayName'