# Docker-compose-status
A simple bash script that checks if all of services in docker compose are up


How to use:
1) Place the script at the same directory with docker-compose.yml
2) Give execute permission for script:
```bash
chmod +x ./check.sh
```
3) Run the script under the user which is in docker group (or under superuser)
```bash
sudo ./check.sh
# or
sudo -u dockerUser ./check.sh
```



Script could be used in CI/CD pipelines, that's why it has line #11
```bash
exit 1
```
