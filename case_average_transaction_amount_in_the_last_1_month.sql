SELECT CONCAT(pelanggan.nama_pelanggan) AS nama_pelanggan, AVG(total_transaksi) AS total_transaksi
FROM transaksi
INNER JOIN pelanggan ON id_pelanggan_pelanggan = id_transaksi_transaksi
WHERE transaksi.tanggal_transaksi >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY id_pelanggan_pelanggan
ORDER BY total_transaksi DESC;