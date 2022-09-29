-- table siswa
create table siswa(
    nis varchar(100) not null,
    nama varchar(200),
    id_kelas varchar(10),
    primary key(nis)
);

-- table kelas
create table kelas(
    kode_kelas varchar(20) not null,
    nama_kelas varchar(50),
    primary key(kode_kelas)
);

-- table mapel
create table mapel(
    kode_mapel varchar(20) not null,
    nama_mapel varchar(200),
    primary key(kode_mapel)
);

-- table guru
create table guru(
    id_guru varchar(20) not null,
    nama_guru varchar(300),
    primary key(id_guru)
);

-- table kbm
create table kbm(
    kode_mapel varchar(20),
    kode_kelas varchar(20),
    id_guru varchar(20)
);

-- table nilai
create table nilai(
    nis varchar(20),
    kode_mapel varchar(20),
    id_guru varchar(20),
    nilai double
);