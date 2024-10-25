-- Membuat tabel "Data_Mahasiswa" dalam schema "uts_basisdata"
CREATE TABLE uts_basisdata.Data_Mahasiswa (
    NIM CHAR(10) PRIMARY KEY,             -- Nomor Induk Mahasiswa, tipe data CHAR(10)
    Nama VARCHAR(100) NOT NULL,           -- Nama mahasiswa, tipe VARCHAR untuk panjang fleksibel
    Jenjang ENUM('D3', 'S1', 'S2', 'S3'), -- Jenjang pendidikan, ENUM untuk nilai tetap
    Program_Studi VARCHAR(50) NOT NULL,   -- Program studi mahasiswa, tipe VARCHAR
    Masuk YEAR NOT NULL,                  -- Tahun masuk, menggunakan tipe YEAR
    Status ENUM('Aktif', 'Tidak Aktif', 'Lulus', 'Drop Out'), -- Status mahasiswa, ENUM untuk nilai tetap
    Smt TINYINT UNSIGNED,                 -- Semester, menggunakan tipe TINYINT untuk menyimpan nilai kecil
    SKS SMALLINT UNSIGNED,                -- Jumlah SKS yang sudah ditempuh, tipe SMALLINT
    IPK DECIMAL(3, 2)                     -- Indeks Prestasi Kumulatif, tipe DECIMAL(3,2)
);
-- Membuat tabel "Kartu_Rencana_Studi" dalam schema "uts_basisdata"
CREATE TABLE uts_basisdata.Kartu_Rencana_Studi (
    No INT AUTO_INCREMENT PRIMARY KEY,         -- Nomor urut sebagai primary key dan auto-increment
    Kode CHAR(6) NOT NULL,                     -- Kode mata kuliah, tipe CHAR(6)
    NIM CHAR(10) NOT NULL,                     -- NIM mahasiswa, tipe CHAR(10) untuk relasi dengan "Data_Mahasiswa"
    Nama_Mata_Kuliah VARCHAR(100) NOT NULL,    -- Nama mata kuliah, tipe VARCHAR
    Nama_Kelas VARCHAR(10) NOT NULL,           -- Nama kelas, tipe VARCHAR
    SKS TINYINT UNSIGNED NOT NULL,             -- Jumlah SKS mata kuliah, tipe TINYINT
    Jadwal DATETIME NOT NULL,                  -- Jadwal mata kuliah, tipe DATETIME
    Dosen_Pengajar VARCHAR(100) NOT NULL,      -- Nama dosen pengajar, tipe VARCHAR
    Keterangan TEXT,                           -- Keterangan tambahan, tipe TEXT
    UNIQUE (NIM, Kode)                         -- Key unik gabungan untuk menghindari duplikasi NIM dan Kode mata kuliah
);

-- Menambahkan foreign key pada kolom NIM untuk menghubungkan tabel "Kartu_Rencana_Studi" dengan tabel "Data_Mahasiswa"
ALTER TABLE uts_basisdata.Kartu_Rencana_Studi
ADD CONSTRAINT fk_nim_krs FOREIGN KEY (NIM) REFERENCES uts_basisdata.Data_Mahasiswa(NIM);


-- Membuat tabel "Kartu_Hasil_Studi" dalam schema "uts_basisdata"
CREATE TABLE uts_basisdata.Kartu_Hasil_Studi (
    No INT AUTO_INCREMENT PRIMARY KEY,         -- Nomor urut sebagai primary key dan auto-increment
    Kode CHAR(6) NOT NULL,                     -- Kode mata kuliah, tipe CHAR(6)
    NIM CHAR(10) NOT NULL,                     -- NIM mahasiswa, tipe CHAR(10)
    Nama_Mata_Kuliah VARCHAR(100) NOT NULL,    -- Nama mata kuliah, tipe VARCHAR
    SKS TINYINT UNSIGNED NOT NULL,             -- Jumlah SKS mata kuliah, tipe TINYINT
    Nilai_Mutu DECIMAL(3, 2),                  -- Nilai mutu, tipe DECIMAL(3,2)
    Bobot DECIMAL(3, 2),                       -- Bobot nilai berdasarkan nilai mutu, tipe DECIMAL(3,2)
    Nilai CHAR(1),                             -- Nilai huruf (A, B, C, dst.), tipe CHAR(1)
    Keterangan TEXT,                           -- Keterangan tambahan, tipe TEXT
    UNIQUE (NIM, Kode)                         -- Key unik gabungan untuk mencegah duplikasi NIM dan Kode mata kuliah
);

-- Menambahkan foreign key pada kolom NIM untuk menghubungkan tabel "Kartu_Hasil_Studi" dengan tabel "Data_Mahasiswa"
ALTER TABLE uts_basisdata.Kartu_Hasil_Studi
ADD CONSTRAINT fk_nim_khs FOREIGN KEY (NIM) REFERENCES uts_basisdata.Data_Mahasiswa(NIM);

-- Menambahkan foreign key pada kolom Kode untuk menghubungkan tabel "Kartu_Hasil_Studi" dengan tabel "Kartu_Rencana_Studi"
ALTER TABLE uts_basisdata.Kartu_Hasil_Studi
ADD CONSTRAINT fk_kode_khs FOREIGN KEY (Kode) REFERENCES uts_basisdata.Kartu_Rencana_Studi(Kode);


