alter table wp_users modify ID int(11) NOT NULL AUTO_INCREMENT;
alter table wp_users add last_login datetime(6) DEFAULT NULL;
alter table wp_users add is_active tinyint(1) NOT NULL DEFAULT '1';
alter table wp_users add is_admin tinyint(1) NOT NULL DEFAULT '0';
