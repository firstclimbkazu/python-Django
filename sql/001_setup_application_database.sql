CREATE DATABASE IF NOT EXISTS django CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER IF NOT EXISTS 'django'@'%' IDENTIFIED BY 'P@ssw0rd_django';
GRANT ALL PRIVILEGES ON django.* TO 'django'@'%';

