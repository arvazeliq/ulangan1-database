-- daftar nama kelas yang mengikuti mapel kimia
select k.kode_kelas, k.nama_kelas, m.nama_mapel
from kelas k join mapel m join kbm
on k.kode_kelas = kbm.kode_kelas and m.kode_mapel = kbm.kode_mapel
where m.nama_mapel = "Kimia";

-- daftar nama siswa nilai mtk dibawah kkm
select s.nis, s.nama, m.nama_mapel, m.kkm, n.nilai
from siswa s join nilai n join mapel m
on s.nis = n.nis and n.kode_mapel = m.kode_mapel
where n.nilai < m.kkm and m.nama_mapel = "Matematika";

-- jumlah siswa nilainya dibawah KKM di setiap mapel
select m.kode_mapel, m.nama_mapel, count(s.nis) as jumlah
from nilai n join siswa s join mapel m
on n.nis = s.nis and n.kode_mapel = m.kode_mapel
where n.nilai < m.kkm
group by m.nama_mapel;

-- nilai ana putri di setiap mapel
select m.nama_mapel, n.nilai
from siswa s join nilai n join mapel m
on s.nis = n.nis and n.kode_mapel = m.kode_mapel
where s.nama = "Ana Putri"
order by m.nama_mapel
;

-- daftar nama siswa yang diajar siti kurniawan
select s.nis, s.nama, k.nama_kelas
from siswa s join kelas k join kbm join guru g
on s.kode_kelas = k.kode_kelas and k.kode_kelas = kbm.kode_kelas and kbm.id_guru = g.id_guru
where g.nama_guru = "Siti Kurniawati"
order by s.nama desc;