/* 1. Data Definition Language (DDL)
DDL adalah perintah yang digunakan untuk mendefinisikan atau memodifikasi struktur objek di dalam database, 
seperti tabel, indeks, dan skema. Perintah DDL mengubah struktur dari database secara langsung. 
Contoh Perintah DDL*/
CREATE TABLE karyawan (
    id INT PRIMARY KEY,
    nama VARCHAR(50),
    umur INT,
    jabatan VARCHAR(50)
);
ALTER TABLE karyawan
ADD alamat VARCHAR(100);

DROP TABLE karyawan;

TRUNCATE TABLE karyawan;

/* DQL adalah perintah yang digunakan untuk mengambil data dari database, 
umumnya melalui perintah SELECT. Fokus DQL adalah mengambil data tanpa melakukan modifikasi. 
Contoh Perintah DQL*/
SELECT nama, jabatan
FROM karyawan
WHERE umur > 25;

/* Data Manipulation Language (DML)
DML adalah perintah yang digunakan untuk memanipulasi data di dalam tabel, termasuk menambah, mengubah, atau menghapus data.
Contoh perintah DML*/
INSERT INTO karyawan (id, nama, umur, jabatan)
VALUES (1, 'Fayyadh', 30, 'Developer');

UPDATE karyawan
SET umur = 31
WHERE id = 1;


DELETE FROM karyawan
WHERE id = 1;
/* 	DDL digunakan untuk mendefinisikan dan mengubah struktur database dan tabelnya, berfokus pada objek di dalam database, seperti membuat atau menghapus tabel.
	DQL berfungsi untuk mengambil atau membaca data yang ada di database tanpa melakukan modifikasi data.
	DML digunakan untuk manipulasi atau modifikasi data di dalam tabel, seperti menambah atau memperbarui data.*/