# Bash Scripting Assignments

This repository contains solutions to 16 Bash scripting assignments covering basic Linux commands, file handling, process management, text processing, and task automation.

## Scripts

| No. | Script Name | Description |
|-----|-------------|-------------|
| 1 | `create_files.sh` | Creates a new directory, creates three empty files inside it, and lists the directory contents. |
| 2 | `check_file.sh` | Prompts the user for a filename and checks whether it is a regular file or a directory. |
| 3 | `copy_file.sh` | Copies a file from a source path to a destination path with error handling. |
| 4 | `display_info.sh` | Displays the current date, time, and logged-in username. |
| 5 | `check_permissions.sh` | Checks whether the owner has read, write, and execute permissions on a file. |
| 6 | `compare_strings.sh` | Compares two strings provided as command-line arguments. |
| 7 | `list_processes.sh` | Displays all currently running processes and their Process IDs (PIDs). |
| 8 | `kill_process.sh` | Terminates a process using the specified Process ID (PID). |
| 9 | `disk_usage.sh` | Displays disk usage information for all mounted filesystems. |
| 10 | `count_file.sh` | Counts the number of lines, words, and characters in a text file. |
| 11 | `search_string.sh` | Searches for a specific string in a file or directory recursively. |
| 12 | `backup_directory.sh` | Creates a compressed backup of a directory with a timestamp. |
| 13 | `schedule_cron.sh` | Schedules a task to run at a specified time using cron. |
| 14 | `replace_word.sh` | Replaces all occurrences of one word with another in `data.txt`. |
| 15 | `awk_script.sh` | Prints lines from `data.txt` where the second field is greater than 10 using `awk`. |
| 16 | `pattern_search.sh` | Prints lines containing a specified pattern and displays a custom message for each match using `awk`. |

## Requirements

- Linux Operating System
- Bash Shell
- Standard Linux utilities:
  - `awk`
  - `sed`
  - `grep`
  - `tar`
  - `cron`
  - `wc`
  - `ps`

## How to Run

Make a script executable:

```bash
chmod +x script_name.sh
```

Run the script:

```bash
./script_name.sh
```

Example:

```bash
./compare_strings.sh hello hello
```

## Author

**Pratik Wagh**

