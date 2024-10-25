SELECT * FROM mahasiswa.data_ipk;
CREATE TABLE Data_IPK (
    NIM VARCHAR(10) PRIMARY KEY,
    Nama_Mahasiswa VARCHAR(100),
    Program_Studi VARCHAR(50),
    Angkatan INT,
    IPK DECIMAL(3,2)
);
INSERT INTO Data_IPK (NIM, Nama_Mahasiswa, Program_Studi, Angkatan, IPK) VALUES
('2021071001', 'ABDUL HARIS', 'S1 - Informatika', 2021, 3.14),
('2021071025', 'MUHAMMAD ILFANZA MUSTAFAVI', 'S1 - Informatika', 2021, 3.50),
('2021071034', 'ZAHID MAULANA HAFIZH', 'S1 - Informatika', 2021, 2.99),
('2021071039', 'DEVANNA ALANDRA KHANSA', 'S1 - Informatika', 2021, 3.45),
('2021071005', 'IHSAN', 'S1 - Informatika', 2021, 2.91);


UPDATE Data_IPK
SET Nama_Mahasiswa = 'ATIKAH SUASTIKA'
WHERE NIM = '2021071034';


SELECT *
FROM Data_IPK
WHERE IPK > 3;

DELETE FROM Data_IPK
WHERE NIM = '2021071039';
