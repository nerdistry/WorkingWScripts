#!/bin/bash

# Set the date format for the backup filename
DATE=$(date +"%Y%m%d%H%M%S")

# Directories where the staff and students directories are located
STAFF_DIR="/staff/"
STUDENTS_DIR="/students/"

# Destination directory where you want to keep the backup
STAFF_BACKUP_DIR="/backups/staff_backup"
STUDENTS_BACKUP_DIR="/backups/student_backup"

# Creating an archive and compress for staff
tar -czvf "$STAFF_BACKUP_DIR/staff_backup_$DATE.tar.gz" -C "$STAFF_DIR" .

# Creating an archive and compress for students
tar -czvf "$STUDENTS_BACKUP_DIR/students_backup_$DATE.tar.gz" -C "$STUDENTS_DIR" .

echo "Backup for staff and students taken successfully!"
