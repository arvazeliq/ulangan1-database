-- table siswa
insert into siswa
(nis, nama, kode_kelas)
values
("111", "Ana Putri", "XR2"),
("112", "Annisa Rachmawati", "XR2"),
("113", "Alipah Nurhidayati", "XR1"),
("114", "Aguwin Ardi Pranata", "XR1"),
("115", "Abdul Widodo", "XR3"),
("116", "Darmo Joyo", "XR3"),
("117", "Rosidatul Maghfiroh", "XR4"),
("118", "Salwatul", "XR4"),
("119", "Widya Yunitha", "XR5"),
("120", "Yudhawan Anis", "XR5");

-- table kelas
insert into kelas
(kode_kelas, nama_kelas)
values
("XR1", "X RPL 1"),
("XR2", "X RPL 2"),
("XR3", "X RPL 3"),
("XR4", "X RPL 4"),
("XR5", "X RPL 5");

-- table mapel
insert into mapel
(kode_mapel, nama_mapel, kkm)
values
("BIG", "Bahasa Inggris", 80),
("BIN", "Bahasa Indonesia", 80),
("KIM", "Kimia", 70),
("MTK", "MAtematika", 75),
("PKN", "Pendidikan Kewarganegaraan", 75),
("SI", "Sejarah Indonesia", 78);

-- table guru
insert into guru
(id_guru, nama_guru)
values
("001", "Shelvy Fitria"),
("002", "Siti Kurniawati"),
("003", "Ukhty Aulia");

-- table kbm
insert into kbm
(kode_mapel, kode_kelas, id_guru)
values
("KIM", "XR4", "002"),
("MTk", "XR4", "001"),
("MTK", "XR3", "001"),
("MTK", "XR2", "001"),
("MTK", "XR1", "001"),
("MTK", "XR5", "001"),
("BIN", "XR5", "003"),
("BIN", "XR4", "003"),
("BIG", "XR5", "003"),
("SI", "XR4", "001"),
("SI", "XR5", "001"),
("KIM", "XR1", "002"),
("KIM", "XR2", "002");

-- table nilai
insert into nilai
(nis, kode_mapel, nilai)
values
("111", "KIM", "90"),
("112", "KIM", "60"),
("113", "KIM", "60"),
("114", "KIM", "75"),
("113", "MTK", "85"),
("114", "MTK", "70"),
("115", "MTK", "76"),
("118", "MTK", "80"),
("120", "MTK", "98"),
("111", "MTK", "76"),
("111", "SI", "90"),
("112", "SI", "75"),
("112", "BIN", "60"),
("111", "BIN", "70"),
("117", "BIN", "70");