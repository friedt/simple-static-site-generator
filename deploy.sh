#!/bin/sh
# deploy dist to production
# -a, --archive
# -v, --verbose
#       This  option  increases  the amount of information you are given during the transfer.  By default,
#       rsync works silently. A single -v will give you information about what files are being transferred
#       and  a  brief summary at the end. Two -v options will give you information on what files are being
#       skipped and slightly more information at the end. More than two -v options should only be used  if
#       you are debugging rsync.
# -z, --compress
#       With  this  option, rsync compresses the file data as it is sent to the destination machine, which
#       reduces the amount of data being transmitted -- something that is useful over a slow connection.
#  --delete
#       delete extraneous files from dest dirs
#   --dry-run

# https://www.samba.org/ftp/rsync/rsync.html

# build
npm run build

# transfer to server
rsync -avz --delete -e 'ssh' dist/ [YOURDOMAIN.com]:/var/www/my-simple-static-website/
