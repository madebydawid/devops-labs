# Log-Archive-Tool
A tool to archive old logs on a schedule, it compresses the logs and stores them in a new directory.

# Requirements
- The tool should run from the command line
- Accept the log directory as an argument
- Compress the logs
- Store them in a new directory.

### The user should be able to:

- Provide the log directory as an argument when running the tool.
`log-archive <log-directory>`
- The tool should compress the logs in a tar.gz file and store them in a new directory.
- The tool should log the date and time of the archive to a file.
`logs_archive_20240816_100648.tar.gz`

---

### Scheduling the Log-Archive Tool with Cron

There is also the ability to automate the log archiving at regular intervals with `crontab`, should you wish to do that, follow these steps:

1. **Give execute permissions to the script:**
   ```bash
   chmod +x /home/username/log-archive.sh

2. **Add a Cron job**: Open the crontab file:
```bash
crontab -e
```

3. **Schedule the script**: For example, to run the tool daily at 02:00, add the following line in crontab:
```bash
0 2 * * * /home/username/log-archive.sh /path/to/logs
```
### Screenshot
[Result of the Log-archive-tool](https://github.com/madebydawid/devops-labs/blob/main/log-archive-tool/images/result.jpg?raw=true)


---


### Potential upgrades to the project

📌Adding functionality to the tool like emailing the user updates on the archive.

📌Sending the archive to a remote server or cloud storage.

---

You can learn more about the `tar` command [here](https://www.gnu.org/software/tar/manual/tar.html) and [here](https://linuxize.com/post/how-to-extract-unzip-tar-gz-file/)

[Project can be found at roadhmap.se](https://roadmap.sh/projects/log-archive-tool)
