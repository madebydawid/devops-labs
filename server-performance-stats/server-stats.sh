#!/bin/bash

# get total CPU usage
get_cpu_usage() {
    print_colored "CPU Usage:"
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
    echo $cpu_usage
}

# get total memory usage
get_memory_usage() {
    print_colored "Memory Usage:"
    local mem_usage=$(free | grep Mem | awk '{print "Used: " $3/$2 * 100.0 "%"}')
    echo $mem_usage
}

# get total disk usage
get_disk_usage() {
    print_colored "Disk Usage:"
    local disk_usage=$(df --output=source,size,used,avail,pcent / | tail -1)
    echo $disk_usage
}

# get top 5 processes by CPU usage
get_top_cpu_processes() {
    print_colored "Top 5 CPU Processes:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# get top 5 processes by memory usage
get_top_memory_usage() {
    print_colored "Top 5 Memory Processes:"
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}

# Additional stats
get_additional_stats() {
    print_colored "Additional Stats:"
    echo -e "\033[1;37mOS Version: $(uname -a)\033[0m"
    echo -e "\033[1;37mUptime: $(uptime -p)\033[0m"
    print_colored "Logged in users: \033[1;37m$(who | wc -l)\033[0m"
    print_colored "Current user: \033[1;37mdawid\033[0m"
}

# Färglägga text i cyan
print_colored() {
    echo -e "\033[1;36m$1\033[0m"
}

main() {
    echo -e "\033[1;36mServer Performance Stats\033[0m"
    echo "========================"
    
    get_cpu_usage
    echo ""
    
    get_memory_usage
    echo ""
    
    get_disk_usage
    echo ""
    
    get_top_cpu_processes
    echo ""
    
    get_top_memory_usage
    echo ""
    
    get_additional_stats
}

main
