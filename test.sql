create database test;
use test;


# no 1
create table transaksi (id int primary key not null , tanggal_order timestamp, status_pelunasan varchar(20), tanggal_pemayaran timestamp);
INSERT INTO test.transaksi (id, tanggal_order, status_pelunasan, tanggal_pemayaran) VALUES (1, '2022-05-11 16:53:35', 'lunas', '2022-05-11 17:53:42');


# no 2
create table detail_transaksi(id int ,id_transaksi int,Harga int,jumlah int,subtotal int);
INSERT INTO test.detail_transaksi (id, id_transaksi, Harga, jumlah, subtotal) VALUES (1, 1, 10000, 1, 10000);

# no 3
select transaksi.id, transaksi.tanggal_order, transaksi.status_pelunasan, transaksi.tanggal_pemayaran, SUM(detail_transaksi.subtotal) as total, detail_transaksi.jumlah
from detail_transaksi
join transaksi on detail_transaksi.id_transaksi=transaksi.id group by  DATE(tanggal_order) ;