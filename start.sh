#!/bin/bash
#
# Download a backup if available
if [[ -n "$RESTORE_URL" ]]
then
  echo "Restoring backup from $RESTORE_URL"
  mkdir -p /tmp/jenkins_restore && cd /tmp/jenkins_restore
  curl -o restore.tgz -L $RESTORE_URL
  tar -zxvf restore.tgz
  cp -R `ls -d  */`*  /usr/share/jenkins/ref/
  cd $HOME
  rm -rf /tmp/jenkins_restore
fi

# Run jenkins startup script
/usr/local/bin/jenkins.sh "$@"

