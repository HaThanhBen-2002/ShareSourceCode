
CREATE DATABASE QL_ThamMyVien
GO
Use QL_ThamMyVien
Go

CREATE TABLE NhanVien (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    SoCCCD NVARCHAR(20),
    HoTen NVARCHAR(255),
    NgaySinh NVARCHAR(255),
    GioiTinh NVARCHAR(20),
    QueQuan NVARCHAR(255),
    SoDienThoai NVARCHAR(20),
    Email NVARCHAR(255),
    SoTaiKhoanNganHang NVARCHAR(20),
    DiaChiHienTai NVARCHAR(255),
    BaoHiemSucKhoe NVARCHAR(20),
    BaoHiemXaHoi NVARCHAR(20),
    Luong NVARCHAR(20),
    LoaiNhanVien NVARCHAR(50),
	HinhAnh NVARCHAR(max),
    TrangThai NVARCHAR(50),
    DaXoa bit,
    NgayXoa nvarchar(20),
);

CREATE TABLE TaiKhoan (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TenDangNhap NVARCHAR(255),
    MatKhau NVARCHAR(255),
    Email NVARCHAR(255),
    Khoa BIT,
    DaXoa BIT,
    NgayXoa nvarchar(20),
	NhanVienID INT,
    FOREIGN KEY (NhanVienID) REFERENCES NhanVien(ID)
);

CREATE TABLE KhachHang (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    HoTen NVARCHAR(255),
    NgaySinh NVARCHAR(20),
    SoDienThoai NVARCHAR(255),
    SoCCCD NVARCHAR(255),
    LinkFacebook NVARCHAR(255),
    LinkZalo NVARCHAR(255),
    Email NVARCHAR(255),
    GioiTinh NVARCHAR(20),
    DiaChi NVARCHAR(255),
    TinhTrangKhachHang NVARCHAR(50),
    LoaiKhachHang NVARCHAR(50),
	TichDiem INT,
	NguoiGioiThieu NVARCHAR(500),
    GhiChu NVARCHAR(500),
    HinhAnh NVARCHAR(max),
    DaXoa BIT,
    NgayXoa NVARCHAR(20),
);

CREATE TABLE DichVu (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TenDichVu NVARCHAR(255),
    LoaiDichVu NVARCHAR(50),
    ThongTin NVARCHAR(500),
    GiaTien NVARCHAR(20),
    GhiChu NVARCHAR(500),
    KhuyenMai NVARCHAR(20),
	ThoiGianThucHien NVARCHAR(20),
	TichDiem INT,
    DaXoa BIT,
    NgayXoa NVARCHAR(20),
);

CREATE TABLE HoaDon (
    ID INT IDENTITY(1,1) PRIMARY KEY,
	CodeHoaDon NVARCHAR(50),
    LoaiHoaDon NVARCHAR(50),
    NgayTao NVARCHAR(20),
	NgayThanhToan NVARCHAR(20),
	DaThanhToan NVARCHAR(20),
    NhanVienID INT,
    KhachHangID INT,
    HinhThucThanhToan NVARCHAR(255),
    TongSoTien NVARCHAR(20),
    GhiChu NVARCHAR(500),
    DaXoa bit,
    NgayXoa nvarchar(20),
    FOREIGN KEY (NhanVienID) REFERENCES NhanVien(ID),
    FOREIGN KEY (KhachHangID) REFERENCES KhachHang(ID)
);

CREATE TABLE ChiTietHoaDon (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TenChiTietHoaDon NVARCHAR(255),
    DonViTinh NVARCHAR(20),
    Gia NVARCHAR(20),
    GiamGia NVARCHAR(20),
    TongTien NVARCHAR(20),
	HoaDonID INT,
    DaXoa bit,
    NgayXoa nvarchar(20),
    FOREIGN KEY (HoaDonID) REFERENCES HoaDon(ID)
);

CREATE TABLE LichHen (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    TenLichHen NVARCHAR(20),
    NgayTao NVARCHAR(20),
    NgayHen NVARCHAR(20),
	ThoiGianBuoiHen NVARCHAR(20),
	DichVuCanHen NVARCHAR(250),
    KhachHangID INT,
    NhanVienID INT,
    TrangThai NVARCHAR(50),
    LoaiLichHen NVARCHAR(50),
    GhiChu NVARCHAR(255),
    DaXoa bit,
    NgayXoa nvarchar(20),
	FOREIGN KEY (KhachHangID) REFERENCES KhachHang(ID),
	FOREIGN KEY (NhanVienID) REFERENCES NhanVien(ID)
);

