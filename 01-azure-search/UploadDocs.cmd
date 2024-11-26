@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=a38d9f6e-bf2f-4768-9711-ba4815a96fcb
set azure_storage_account=rg13286088654
set azure_storage_key=UaLKAGfjNmI0LfesRtDJUQvDZykrehPSujINxq2quHt4yxtEa3FcEy0aC6a3Y4IIC/jtYstUQGb5+ASt8B0W1g==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
