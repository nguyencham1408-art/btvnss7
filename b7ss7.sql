create database bai_gioi7;
use bai_gioi7;

create table giao_dich (
id_giao_dich  INT PRIMARY KEY, 
id_khach_hang  INT ,
id_san_pham  INT ,
ten_san_pham  VARCHAR ( 255 ),
danh_muc  VARCHAR ( 100 ),
so_luong  INT ,
don_gia  INT ,
ngay_giao_dich  DATE ,
khu_vuc  VARCHAR ( 100 )  -- Ví dụ: 'Hà Nội', 'Đà Nẵng', 'TP.HCM'
);

insert into giao_dich(id_giao_dich,id_khach_hang,id_san_pham,ten_san_pham,danh_muc,so_luong,don_gia,ngay_giao_dich,khu_vuc)
values
( 1 ,  101 ,  1 ,  'Laptop A' ,  'Dien tu' ,  1 ,  20000000 ,  '2023-01-15' ,  'Hà Nội' ),
( 2 ,  102 ,  2 ,  'Dien thoai B' ,  'Dien tu' ,  2 ,  15000000 ,  '2023-02-20' ,  'TP.HCM' ),
( 3 ,  101 ,  3 ,  'Ao so mi C' ,  'Thoi trang' ,  5 ,  500000 ,  '2023-03-10' ,  'Hà Nội' ),
( 4 ,  103 ,  1 ,  'Laptop A' ,  'Diên tu' ,  1 ,  20000000 ,  '2023-03-12' ,  'Đà Nẵng' ),
( 5 ,  102 ,  4 ,  'Quan jean D' ,  'Thới trang' ,  3 ,  700000 ,  '2023-04-05' ,  'TP.HCM' ),
( 6 ,  101 ,  2 ,  'Dien thoai B' ,  'Dien tu' ,  1 ,  15000000 ,  '2023-05-08' ,  'Hà Nội' ),
( 7 ,  104 ,  5 ,  'Nội cơ điện E' ,  'Gia dung' ,  2 ,  2000000 ,  '2023-05-18' ,  'TP.HCM' ),
( 8 ,  103 ,  3 ,  'Ao so mi C' ,  'Thoi trang' ,  10 ,  500000 ,  '2023-06-22' ,  'Đà Nẵng' ),
( 9 ,  102 ,  1 ,  'Laptop A' ,  'Dien tu' ,  1 ,  21000000 ,  '2023-07-10' ,  'TP.HCM' ),
( 10 ,  105 ,  6 ,  'May xay sinh to F' ,  'Gia dung' ,  1 ,  1500000 ,  '2022-12-01' ,  'Hà Nội' ),
( 11 ,  101 ,  4 ,  'Quan jean D' ,  'Thới trang' ,  2 ,  700000 ,  '2023-08-15' ,  'Hà Nội' );

select id_khach_hang, sum(so_luong * don_gia) as tong_chi_tieu_2023
from giao_dich
where year (ngay_giao_dich)=2023
group by id_khach_hang
having sum(so_luong * don_gia) > 30000000;

select khu_vuc, sum(so_luong * don_gia) as tong_doanh_thu,
sum(so_luong) as tong_so_luong
from giao_dich
where ten_san_pham = 'Laptop A'
group by khu_vuc
having sum(so_luong) > 1;

select danh_muc, avg(so_luong * don_gia) as gia_tri_trung_binh
from giao_dich
where khu_vuc = 'tpHCM'
group by danh_muc
having avg (so_luong * don_gia) > 5000000;

select id_khach_hang
from giao_dich
where year (ngay_giao_dich) = 2023
group by id_khach_hang
having count(*) >= 2;



