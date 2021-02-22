DROP SCHEMA IF EXISTS `magnesie_result_storage`;

CREATE SCHEMA IF NOT EXISTS `magnesie_result_storage`;

CREATE USER 'magnesie_result_storage'@'%' IDENTIFIED WITH mysql_native_password BY 'password';

GRANT ALL PRIVILEGES ON `magnesie_result_storage`.* TO 'magnesie_result_storage'@'%';

FLUSH PRIVILEGES;
