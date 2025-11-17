create database bai_kha6;
use bai_kha6;

create table nhat_ky_nguoi_dung (
id_nhat_ky  INT PRIMARY KEY, 
id_nguoi_dung  INT ,
id_bai_viet  INT ,
chuyen_muc  VARCHAR ( 100 ),
thoi_gian_doc_giay  INT ,
ngay_ghi_nhat_ky  DATE
);

insert into nhat_ky_nguoi_dung (id_nhat_ky,id_nguoi_dung,id_bai_viet,chuyen_muc,thoi_gian_doc_giay,ngay_ghi_nhat_ky)
values
( 1 ,  1 ,  101 ,  'Lập trình' ,  300 ,  '2023-10-01' ),
( 2 ,  2 ,  102 ,  'Thiết kế' ,  180 ,  '2023-10-01' ),
( 3 ,  1 ,  103 ,  'Lấp trinh' ,  450 ,  '2023-10-02' ),
( 4 ,  3 ,  104 ,  'Bảo mật' ,  600 ,  '2023-10-03' ),
( 5 ,  2 ,  101 ,  'Lập trình' ,  240 ,  '2023-10-03' ),
( 6 ,  1 ,  104 ,  'Bảo mật' ,  500 ,  '2023-10-04' ),
( 7 ,  4 ,  102 ,  'Thiết kế' ,  120 ,  '2023-10-04' ),
( 8 ,  3 ,  101 ,  'Lập trình' ,  320 ,  '2023-10-05' ),
( 9 ,  2 ,  105 ,  'Thiết kế' ,  200 ,  '2023-10-05' );

select id_nguoi_dung, sum(thoi_gian_doc_giay) as tong_thoi_gian_doc
from nhat_ky_nguoi_dung
group by id_nguoi_dung
order by tong_thoi_gian_doc desc 

select chuyen_muc, count(*) as so_luot_doc
from nhat_ky_nguoi_dung
group by chuyen_muc;

select id_bai_viet from nhat_ky_nguoi_dung
group by id_bai_viet
having count(*) > 1

select id_nguoi_dung, avg (thoi_gian_doc_giay) as thoi_gian_trung_binh
from nhat_ky_nguoi_dung
group by id_nguoi_dung
having avg (thoi_gian_doc_giay) > 350;




 
