# DevOps Projects from Roadmap.sh 



1. [Server Performance Stats Repository](https://github.com/madebydawid/devops-labs/tree/main/server-performance-stats) ✔   |  [Roadhmap.sh](https://roadmap.sh/projects/server-stats)
2. [Log Archive Tool](https://github.com/madebydawid/devops-labs/tree/main/log-archive-tool) ✔ | [Roadmap.sh](https://roadmap.sh/projects/log-archive-tool)
3. Nginx Log Analyser
4. GitHub Pages Deployment
5. SSH Remote Server Setup
6. Static Site Server
7. Basic DNS Setup
8. Simple Monitoring
9. Dummy Systemd Service
10. Basic Dockerfile
11. EC2 Instance
12. Configuration Management
13. IaC on DigitalOcean
14. Node.js Service Deployment
15. Dockerized Service
16. Multi-Container Application
17. Automated DB Backups
18. Blue-Green Deployment
19. Prometheus and Grafana
20. Multi-Service Application
21. Service Discovery

---

All the projects cen be found at [roadmap.sh](https://roadmap.sh/devops/projects)
=======
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


### Potential upgrades to the project

📌Adding functionality to the tool like emailing the user updates on the archive.

📌Sending the archive to a remote server or cloud storage.

---

You can learn more about the `tar` command [here](https://www.gnu.org/software/tar/manual/tar.html) and [here](https://linuxize.com/post/how-to-extract-unzip-tar-gz-file/)

[Project can be found at roadhmap.se](https://roadmap.sh/projects/log-archive-tool)
