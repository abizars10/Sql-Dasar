Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 5.5.51 MySQL Community Server (GPL)

Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database latihan1;
Query OK, 1 row affected (0.02 sec)

mysql> use latihan1;
Database changed
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| latihan            |
| latihan1           |
| mysql              |
| performance_schema |
| test               |
| tugas              |
+--------------------+
7 rows in set (0.00 sec)

mysql> create table biodata (nama varchar (15), alamat text );
Query OK, 0 rows affected (0.28 sec)

mysql> desc biodata;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| nama   | varchar(15) | YES  |     | NULL    |       |
| alamat | text        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.07 sec)

mysql> alter table biodata change alamat alamat_jalan varchar (30);
Query OK, 0 rows affected (0.30 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc biodata;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| nama         | varchar(15) | YES  |     | NULL    |       |
| alamat_jalan | varchar(30) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
2 rows in set (0.07 sec)

mysql> alter table biodata add column id int(10) first;
Query OK, 0 rows affected (0.73 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc biodata;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int(10)     | YES  |     | NULL    |       |
| nama         | varchar(15) | YES  |     | NULL    |       |
| alamat_jalan | varchar(30) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.07 sec)

mysql> alter table biodata modify alamat_jalan tinytext;
Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc biodata;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int(10)     | YES  |     | NULL    |       |
| nama         | varchar(15) | YES  |     | NULL    |       |
| alamat_jalan | tinytext    | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.06 sec)

mysql> alter table biodata drop alamat_jalan;
Query OK, 0 rows affected (0.77 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc biodata;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(10)     | YES  |     | NULL    |       |
| nama  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.07 sec)

mysql> alter table biodata add primary key(id);
Query OK, 0 rows affected (0.19 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc biodata;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(10)     | NO   | PRI | 0       |       |
| nama  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.07 sec)

mysql> alter table biodata drop primary key;
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc biodata;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int(10)     | NO   |     | 0       |       |
| nama  | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.07 sec)

mysql>