create database PhongChoi

create table PhongChoi(
MaPC char(10) primary key,
Gia int,
TenP nvarchar(50))

create table NhanVien(
MaNV char(10) primary key,
TenNV nvarchar(50),
NgayS date,
Luong int,
GioiT date)

create table DichVu(
MaDV char(10) primary key,
TenDV nvarchar(50),
GiaDV int)

create table KhachHang(
MaKH char(10) primary key,
TenKH nvarchar(50),
GioiT nvarchar(3),
NgayS date)

create table MayChoi(
MaM char(10) primary key,
HienT bit,
MaPC char(10) references PhongChoi(MaPC) not null)

create table TaiKhoan(
TaiK char(10) primary key,
Pass char(10),
SoDu int,
MaKH char(10) references KhachHang(MaKH) not null,
MaNV char(10) references NhanVien(MaNV) not null)

create table DanhSachChoi(
ThoiGianBM datetime,
ThoiGianTM datetime,
MaM char(10) references MayChoi(MaM) not null,
TaiK char(10) references TaiKhoan(TaiK) not null)

create table HoaDonDV(
TaiK char(10) references TaiKhoan(TaiK) not null,
MaDV char(10) references DichVu(MaDV) not null,
LanSD int,
NgayXuat datetime)