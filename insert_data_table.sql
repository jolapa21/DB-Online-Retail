INSERT INTO kategori (
    id_kategori, nama_kategori
    ) VALUES 
    (1, ‘Elektronik’),
    (2, ‘Fashion’),
    (3, ‘Olahraga’),
    (4, ‘Kesehatan’),
    (5, ‘Kecantikan’);

INSERT INTO produk (
    id_produk, nama_produk, harga_produk, stok_produk, id_kategori
    ) VALUES 
    (101, ‘Laptop Asus’, 8000000, 10, 1),
    (102, ‘Smartphone Samsung’, 5000000, 15, 1),
    (103, ‘Headset Sony’, 300000, 20, 1),
    (201, ‘Kemeja Flanel’, 150000, 25, 2),
    (202, ‘Celana Jeans’, 200000, 30, 2),
    (203, ‘Sepatu Sneakers’, 250000, 35, 2),
    (301, ‘Bola Sepak’, 100000, 40, 3),
    (302, ‘Raket Badminton’, 150000, 45, 3),
    (303, ‘Sepatu Lari’, 200000, 50, 3),
    (401, ‘Masker Medis’, 5000, 1000, 4),
    (402, ‘Hand Sanitizer’, 10000, 500, 4),
    (403, ‘Vitamin C’, 20000, 100, 4),
    (501, ‘Lipstik Matte’, 50000, 60, 5),
    (502, ‘Shampoo’, 30000, 70, 5),
    (503, ‘Sabun Mandi’, 10000, 80, 5);

INSERT INTO pelanggan (
    id_pelanggan, nama_pelanggan, email_pelanggan, alamat_pelanggan
    ) VALUES 
    (1001, ‘Andi’, ‘andi@gmail.com’, ‘Jl. Merdeka No. 1’),
    (1002, ‘Budi’, ‘budi@gmail.com’, ‘Jl. Sudirman No. 2’),
    (1003, ‘Cici’, ‘cici@gmail.com’, ‘Jl. Thamrin No. 3’),
    (1004, ‘Dedi’, ‘dedi@gmail.com’, ‘Jl. Mangga No. 4’),
    (1005, ‘Eka’, ‘eka@gmail.com’, ‘Jl. Raya No. 5’);

INSERT INTO transaksi (
    id_transaksi, tanggal_transaksi, total_transaksi, id_pelanggan
    ) VALUES
    (2001, ‘2021-01-01’, 8500000, 1001),
    (2002, ‘2021-01-02’, 5500000, 1002),
    (2003, ‘2021-01-03’, 350000, 1003),
    (2004, ‘2021-01-04’, 400000, 1004),
    (2005, ‘2021-01-05’, 600000, 1005);

INSERT INTO detail_transaksi (
    id_detail, jumlah_produk, subtotal_produk, id_transaksi, id_produk
    ) VALUES
    (3001, 1, 8000000, 2001, 101),
    (3002, 1, 5000000, 2002, 102),
    (3003, 1, 300000, 2003, 103),
    (3004, 2, 300000, 2004, 201),
    (3005, 1, 100000, 2004, 301),
    (3006, 2, 100000, 2005, 401),
    (3007, 1, 500000, 2005, 501);