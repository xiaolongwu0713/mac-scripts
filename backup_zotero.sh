#/bin/bash

var1=`date '+%Y%m%d%H%M%S'`
log_message="Backup zotero @ ${var1}"
echo ${log_message} >>  zot_backup.log
cd /Users/long/
#zip -rq zot.zip Zotero
filedate=`date '+%Y%m%d%H%M%S'`
filename="backup_${filedate}.zip"
zip -rq ${filename} Zotero

mv ${filename} /Volumes/Samsung_T5/backup/zotero/
