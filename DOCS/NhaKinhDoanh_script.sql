create database NhaKinhDoanh
go
USE [NhaKinhDoanh]
GO
/****** Object:  Table [dbo].[TaiLieuSoftCopy]    Script Date: 10/13/2011 13:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiLieuSoftCopy](
	[MaTaiLieu] [varchar](15) NOT NULL,
	[TenTaiLieu] [nvarchar](30) NULL,
	[NgayTao] [datetime] NULL,
	[GiaBan] [float] NULL,
	[KichThuoc] [float] NULL,
	[DuongDan] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/13/2011 13:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](15) NOT NULL,
	[TenCongTy] [nvarchar](50) NULL,
	[SoGiayPhepKD] [varchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/13/2011 13:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](15) NOT NULL,
	[MatKhauDaMaKhoa] [varchar](30) NULL,
	[DiaChiEmail] [varchar](30) NULL,
	[TinhTrang] [int] NULL,
	[MaVaiTro] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiLieuHardCopy]    Script Date: 10/13/2011 13:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiLieuHardCopy](
	[MaTaiLieu] [varchar](15) NOT NULL,
	[TenTaiLieu] [nvarchar](30) NULL,
	[NgayXuatBan] [datetime] NULL,
	[GiaBan] [float] NULL,
	[SoLuongTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BinhLuan_SC]    Script Date: 10/13/2011 13:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BinhLuan_SC](
	[TenDangNhap] [varchar](15) NOT NULL,
	[MaTaiLieu] [varchar](15) NOT NULL,
	[ThoiDiem] [datetime] NULL,
	[NoiDungBL] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoDich_SC]    Script Date: 10/13/2011 13:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoDich_SC](
	[MaKhachHang] [varchar](15) NOT NULL,
	[MaTaiLieu] [varchar](15) NOT NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoDich_HC]    Script Date: 10/13/2011 13:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoDich_HC](
	[MaKhachHang] [varchar](15) NOT NULL,
	[MaTaiLieu] [varchar](15) NOT NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BinhLuan_HC]    Script Date: 10/13/2011 13:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BinhLuan_HC](
	[TenDangNhap] [varchar](15) NOT NULL,
	[MaTaiLieu] [varchar](15) NOT NULL,
	[ThoiDiem] [datetime] NULL,
	[NoiDungBL] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_BinhLuan_HC_TaiKhoan]    Script Date: 10/13/2011 13:17:00 ******/
ALTER TABLE [dbo].[BinhLuan_HC]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_HC_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[BinhLuan_HC] CHECK CONSTRAINT [FK_BinhLuan_HC_TaiKhoan]
GO
/****** Object:  ForeignKey [FK_BinhLuan_HC_TaiLieuHardCopy]    Script Date: 10/13/2011 13:17:00 ******/
ALTER TABLE [dbo].[BinhLuan_HC]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_HC_TaiLieuHardCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuHardCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[BinhLuan_HC] CHECK CONSTRAINT [FK_BinhLuan_HC_TaiLieuHardCopy]
GO
/****** Object:  ForeignKey [FK_BinhLuan_SC_TaiKhoan]    Script Date: 10/13/2011 13:17:01 ******/
ALTER TABLE [dbo].[BinhLuan_SC]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SC_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[BinhLuan_SC] CHECK CONSTRAINT [FK_BinhLuan_SC_TaiKhoan]
GO
/****** Object:  ForeignKey [FK_BinhLuan_SC_TaiLieuSoftCopy]    Script Date: 10/13/2011 13:17:01 ******/
ALTER TABLE [dbo].[BinhLuan_SC]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SC_TaiLieuSoftCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuSoftCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[BinhLuan_SC] CHECK CONSTRAINT [FK_BinhLuan_SC_TaiLieuSoftCopy]
GO
/****** Object:  ForeignKey [FK_GiaoDich_HC_KhachHang]    Script Date: 10/13/2011 13:17:02 ******/
ALTER TABLE [dbo].[GiaoDich_HC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_HC_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[GiaoDich_HC] CHECK CONSTRAINT [FK_GiaoDich_HC_KhachHang]
GO
/****** Object:  ForeignKey [FK_GiaoDich_HC_TaiLieuHardCopy]    Script Date: 10/13/2011 13:17:02 ******/
ALTER TABLE [dbo].[GiaoDich_HC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_HC_TaiLieuHardCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuHardCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[GiaoDich_HC] CHECK CONSTRAINT [FK_GiaoDich_HC_TaiLieuHardCopy]
GO
/****** Object:  ForeignKey [FK_GiaoDich_SC_KhachHang]    Script Date: 10/13/2011 13:17:03 ******/
ALTER TABLE [dbo].[GiaoDich_SC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_SC_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[GiaoDich_SC] CHECK CONSTRAINT [FK_GiaoDich_SC_KhachHang]
GO
/****** Object:  ForeignKey [FK_GiaoDich_SC_TaiLieuSoftCopy]    Script Date: 10/13/2011 13:17:03 ******/
ALTER TABLE [dbo].[GiaoDich_SC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_SC_TaiLieuSoftCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuSoftCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[GiaoDich_SC] CHECK CONSTRAINT [FK_GiaoDich_SC_TaiLieuSoftCopy]
GO
