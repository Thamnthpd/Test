-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:59:58.612




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(20)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    Gioitinh nchar(10)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    Maphong varchar(20)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong varchar(20)  NOT NULL,
    TenPhong nvarchar(30)  NOT NULL,
    TNhanvien_MaNV varchar(20)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)

ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien 
    FOREIGN KEY (TNhanvien_MaNV)
    REFERENCES TNhanvien (MaNV)
;





-- End of file.

