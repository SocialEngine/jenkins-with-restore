### Backup and Restore
The image includes a job to perform backups. You must modify the job to add where you wish to store the backups.

To restore from an existing backup, launch the container with an environment variable named `RESTORE_URL` that points to the backup (backup must be accessable by url only). For example:

docker run --name jenkins \
  -e RESTORE_URL=https://s3-us-west-2.amazonaws.com/se-jenkins/LATEST.tar.gz?X-Amz-Secrets=super-secret \
  -p 8080:8080 -p 50000:50000 \
  -v /var/jenkins_home tutum.co/socialengine/jenkins-with-restore
