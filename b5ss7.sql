create database bai_kha5;
use bai_kha5;

create table don_hang (
id_don_hang  INT primary key, 
id_khach_hang  INT ,
danh_muc  VARCHAR ( 100 ),
tong_tien  INT ,
ngay_dat  DATE ,
trang_thai  VARCHAR ( 50 )  -- 'Hoàn thanh', 'Da huy'
); 

insert into don_hang(id_don_hang,id_khach_hang,danh_muc,tong_tien,ngay_dat,trang_thai)
values
( 1 ,  101 ,  'Dien tu' ,  15000000 ,  '2023-01-15' ,  'Hoàn thanh' ),
( 2 ,  102 ,  'Thới trang' ,  2500000 ,  '2023-01-20' ,  'Hoàn thanh' ),
( 3 ,  101 ,  'Diên tử' ,  8000000 ,  '2023-02-10' ,  'Hoàn thanh' ),
( 4 ,  103 ,  'Gia dung' ,  5000000 ,  '2023-02-12' ,  'Da huy' ),
( 5 ,  102 ,  'Thới trang' ,  3000000 ,  '2023-03-05' ,  'Hoàn thanh' ),
( 6 ,  101 ,  'Gia dung' ,  4500000 ,  '2023-03-08' ,  'Hoàn thanh' ),
( 7 ,  104 ,  'Dien tu' ,  22000000 ,  '2023-04-18' ,  'Hoàn thanh' ),
( 8 ,  103 ,  'Thới trang' ,  1800000 ,  '2023-04-22' ,  'Hoàn thanh' ),
( 9 ,  102 ,  'Diên tử' ,  12000000 ,  '2022-12-10' ,  'Hoàn thành' );

select id_khach_hang,
sum(tong_tien) as tong_chi_tieu
from don_hang
group by id_khach_hang
order by tong_chi_tieu asc;

select danh_muc, count(*) as so_luong_don
from don_hang
group by danh_muc;

select id_khach_hang from don_hang
group by id_khach_hang
having count(*) > 1 

select danh_muc, sum(tong_tien) as tong_doanh_thu
from don_hang
where trang_thai = 'Hoàn thành'
group by danh_muc
having sum(tong_tien) > 10000000;










 

 
