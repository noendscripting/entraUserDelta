# Input bindings are passed in via param block.
       
param($Timer)
Connect-MgGraph -Identity

#Connect-AzAccount -Identity -Environment 'AzureCloud' 

#$AccessToken = ConvertTo-SecureString ((Get-AzAccessToken -ResourceUrl "https://graph.microsoft.com").Token) -AsPlainText

Write-Host $env:deltaToken

$env:deltaToken = "Hello World"
#throw "This is a big error"
#connect-mgGraph -AccessToken $AccessToken 

$headers = @{ 

'ConsistencyLevel'= 'Eventual' 


} 
invoke-mgGraphRequest -Method GET -Uri 'https://graph.microsoft.com/v1.0/users/delta?$select=id,manager,displayName' -Headers $headers -OutputType PSObject
