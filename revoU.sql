-- 5.	Berapa jumlah transaksi, pendapatan dan jumlah produk yang terjual di platform kita sekarang secara bulanan? apakah terjadi kenaikan atau tidak?

SELECT 
  DATE_TRUNC(DATE(created_at),MONTH),
  count(distinct id) as jumlah_transaksi,
  sum(total) as jumlah_pendapatan,
  sum(quantity) as jumlah_produk_yg_terjual
FROM 
  `revou-data-analyst-438002.ecommerce.transaction` 
group by 
  1
order by
  1 