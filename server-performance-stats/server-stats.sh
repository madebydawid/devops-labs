#!/bin/bash

# get total CPU usage
get_cpu_usage() {
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'
}

# get total memory usage
get_memory_usage() {
    free | grep Mem | awk '{print "Used: " $3/$2 * 100.0 "%"}'
}

# get total disk usage
get_disk_usage() {
    df --output=source,size,used,avail,pcent / | tail -1
}

# get top 5 processes by CPU usage
get_top_cpu_processes() {
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# get top 5 processes by memory usage
get_top_memory_usage() {
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}

# Additional stats
get_additional_stats() {
    echo "OS Version: $(uname -a)"
    echo "Uptime: $(uptime -p)"
    echo "Logged in users: $(who | wc -l)"
}

main() {
    echo "Server Performance Stats"
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
