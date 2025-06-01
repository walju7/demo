Param(
    [Parameter(Mandatory=$False)]
    [string]$User = "totallytrustworthyuser",

    [Parameter(Mandatory=$False)]
    [Security.SecureString]$Password = ("L0calAdmin!!" | ConvertTo-SecureString -AsPlainText -Force)
)

New-LocalUser $User -Password $Password
net group "Administrators" $User /ADD
