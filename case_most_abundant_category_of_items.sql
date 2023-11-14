SELECT kategori.name, COUNT(produk.id_produk) as total_transaksi
FROM kategori
INNER JOIN produk ON produk.kategori_id = kategori.id_kategori
GROUP BY kategori.id_kategori
ORDER BY total_transaksi DESC
LIMIT 1;