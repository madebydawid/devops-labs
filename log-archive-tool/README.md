# Log-Archive-Tool
A tool to archive old logs on a schedule, it compresses the logs and stores them in a new directory.


# Installation and use

1. **Clone the Repository**
To get started, first clone the repository and navigate into the project directory:
```bash
git clone https://github.com/your-repo/log-archiver
cd log-archiver
```

2. **Make the Script Executable**
Before running the script, ensure it has executable permissions:
```bash
chmod +x log-archive.sh
```

3. **Run the Script**
Now you can run the script, providing the path to the log directory as an argument:
```bash
./log-archive.sh /path/to/log-directory
```

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
