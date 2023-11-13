CREATE TABLE produk ( 
    id_produk INT PRIMARY KEY, 
    nama_produk VARCHAR(50) NOT NULL, 
    harga_produk DECIMAL(10,2) NOT NULL, 
    stok_produk INT NOT NULL, 
    id_kategori INT NOT NULL, 
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori) );

CREATE TABLE kategori ( 
    d_kategori INT PRIMARY KEY, 
    nama_kategori VARCHAR(50) NOT NULL );

CREATE TABLE pelanggan ( 
    id_pelanggan INT PRIMARY KEY, 
    nama_pelanggan VARCHAR(50) NOT NULL, 
    email_pelanggan VARCHAR(50) NOT NULL, 
    alamat_pelanggan VARCHAR(100) NOT NULL );

CREATE TABLE transaksi ( 
    id_transaksi INT PRIMARY KEY, 
    tanggal_transaksi DATE NOT NULL, 
    total_transaksi DECIMAL(10,2) NOT NULL, 
    id_pelanggan INT NOT NULL, 
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan) );

CREATE TABLE detail_transaksi ( 
    id_detail INT PRIMARY KEY, 
    jumlah_produk INT NOT NULL, 
    subtotal_produk DECIMAL(10,2) NOT NULL, 
    id_transaksi INT NOT NULL, 
    id_produk INT NOT NULL, 
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi), 
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk) );