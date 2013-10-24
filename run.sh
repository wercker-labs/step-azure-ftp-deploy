
#check for curl
#check if password is filled
#check if publish url starts with ftp
#check if publish url endswith wwwroot

FTP_URL=$WERCKER_AZURE_FTP_DEPLOY_PUBLISH_URL
FTP_PASSWORD=$WERCKER_AZURE_FTP_DEPLOY_PASSWORD
FTP_USERNAME=$WERCKER_AZURE_FTP_DEPLOY_USERNAME

echo "find . -type f -exec curl -u $FTP_USERNAME:$FTP_PASSWORD --ftp-create-dirs -T {} $FTP_URL/{} \;"
find . -type f -exec curl -u $FTP_USERNAME:$FTP_PASSWORD --ftp-create-dirs -T {} $FTP_URL/{} \;
