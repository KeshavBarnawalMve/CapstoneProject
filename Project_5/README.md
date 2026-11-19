# Project 5 - Secure Linux Server Permissions

## Objective

Implement user-based access restrictions on a Linux server using users, groups, ownership, and file permissions.

## Technologies Used

- Linux (Ubuntu)
- User and Group Management
- Linux File Permissions
- Command Line Interface (CLI)

## Tasks Performed

### 1. Created Groups

```bash
sudo groupadd developers
sudo groupadd auditors
```

### 2. Created Users

```bash
sudo useradd -m keshav
sudo useradd -m guest
```

Passwords were assigned using:

```bash
sudo passwd keshav
sudo passwd guest
```

### 3. Assigned Users to Groups

Added `keshav` to the `developers` group.

```bash
sudo usermod -aG developers keshav
```

### 4. Created a Secure Directory

```bash
sudo mkdir /secure_data
sudo chown root:developers /secure_data
sudo chmod 770 /secure_data
```

Permission breakdown:

- Owner: Read, Write, Execute
- Group: Read, Write, Execute
- Others: No Access

### 5. Tested Allowed Access

Logged in as `keshav` and successfully created a file:

```bash
touch /secure_data/keshav_test.txt
```

This confirmed that users in the `developers` group have access.

### 6. Tested Denied Access

Logged in as a user outside the `developers` group and attempted:

```bash
ls /secure_data
touch /secure_data/test.txt
```

Received:

```text
Permission denied
```

This confirmed that unauthorized users cannot access the secured directory.

## Results

- Authorized users were able to access and modify files in `/secure_data`.
- Unauthorized users were denied access.
- Linux permissions were successfully implemented and verified.

## Directory Structure

```text
/secure_data
└── keshav_test.txt
```

## Key Commands Used

```bash
groupadd
useradd
usermod
passwd
groups
chown
chmod
ls -ld
id
su -
```

## Conclusion

This project demonstrated how Linux user accounts, groups, ownership, and file permissions can be used to enforce secure access control. Only users belonging to the designated group were granted access to protected resources, while all other users were restricted.
