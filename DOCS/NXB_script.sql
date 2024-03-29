create database NXB
go
USE [NXB]
GO
/****** Object:  Table [dbo].[TaiLieuSoftCopy]    Script Date: 10/13/2011 12:02:28 ******/
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
/****** Object:  Table [dbo].[TacGia]    Script Date: 10/13/2011 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [varchar](15) NOT NULL,
	[TenTacGia] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[Tuoi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/13/2011 12:02:25 ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/13/2011 12:02:22 ******/
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
/****** Object:  Table [dbo].[TaiLieuHardCopy]    Script Date: 10/13/2011 12:02:27 ******/
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
/****** Object:  Table [dbo].[TacGia_TaiLieuSC]    Script Date: 10/13/2011 12:02:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TacGia_TaiLieuSC](
	[MaTacGia] [varchar](15) NOT NULL,
	[MaTaiLieu] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoDich_SC]    Script Date: 10/13/2011 12:02:20 ******/
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
/****** Object:  Table [dbo].[TacGia_TaiLieuHC]    Script Date: 10/13/2011 12:02:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TacGia_TaiLieuHC](
	[MaTacGia] [varchar](15) NOT NULL,
	[MaTaiLieu] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoDich_HC]    Script Date: 10/13/2011 12:02:19 ******/
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
/****** Object:  ForeignKey [FK_GiaoDich_HC_KhachHang]    Script Date: 10/13/2011 12:02:19 ******/
ALTER TABLE [dbo].[GiaoDich_HC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_HC_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[GiaoDich_HC] CHECK CONSTRAINT [FK_GiaoDich_HC_KhachHang]
GO
/****** Object:  ForeignKey [FK_GiaoDich_HC_TaiLieuHardCopy]    Script Date: 10/13/2011 12:02:19 ******/
ALTER TABLE [dbo].[GiaoDich_HC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_HC_TaiLieuHardCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuHardCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[GiaoDich_HC] CHECK CONSTRAINT [FK_GiaoDich_HC_TaiLieuHardCopy]
GO
/****** Object:  ForeignKey [FK_GiaoDich_SC_KhachHang]    Script Date: 10/13/2011 12:02:20 ******/
ALTER TABLE [dbo].[GiaoDich_SC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_SC_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[GiaoDich_SC] CHECK CONSTRAINT [FK_GiaoDich_SC_KhachHang]
GO
/****** Object:  ForeignKey [FK_GiaoDich_SC_TaiLieuSoftCopy]    Script Date: 10/13/2011 12:02:20 ******/
ALTER TABLE [dbo].[GiaoDich_SC]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_SC_TaiLieuSoftCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuSoftCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[GiaoDich_SC] CHECK CONSTRAINT [FK_GiaoDich_SC_TaiLieuSoftCopy]
GO
/****** Object:  ForeignKey [FK_TacGia_TaiLieuHC_TacGia]    Script Date: 10/13/2011 12:02:23 ******/
ALTER TABLE [dbo].[TacGia_TaiLieuHC]  WITH CHECK ADD  CONSTRAINT [FK_TacGia_TaiLieuHC_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[TacGia_TaiLieuHC] CHECK CONSTRAINT [FK_TacGia_TaiLieuHC_TacGia]
GO
/****** Object:  ForeignKey [FK_TacGia_TaiLieuHC_TaiLieuHardCopy]    Script Date: 10/13/2011 12:02:24 ******/
ALTER TABLE [dbo].[TacGia_TaiLieuHC]  WITH CHECK ADD  CONSTRAINT [FK_TacGia_TaiLieuHC_TaiLieuHardCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuHardCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[TacGia_TaiLieuHC] CHECK CONSTRAINT [FK_TacGia_TaiLieuHC_TaiLieuHardCopy]
GO
/****** Object:  ForeignKey [FK_TacGia_TaiLieuSC_TacGia]    Script Date: 10/13/2011 12:02:24 ******/
ALTER TABLE [dbo].[TacGia_TaiLieuSC]  WITH CHECK ADD  CONSTRAINT [FK_TacGia_TaiLieuSC_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[TacGia_TaiLieuSC] CHECK CONSTRAINT [FK_TacGia_TaiLieuSC_TacGia]
GO
/****** Object:  ForeignKey [FK_TacGia_TaiLieuSC_TaiLieuSoftCopy]    Script Date: 10/13/2011 12:02:24 ******/
ALTER TABLE [dbo].[TacGia_TaiLieuSC]  WITH CHECK ADD  CONSTRAINT [FK_TacGia_TaiLieuSC_TaiLieuSoftCopy] FOREIGN KEY([MaTaiLieu])
REFERENCES [dbo].[TaiLieuSoftCopy] ([MaTaiLieu])
GO
ALTER TABLE [dbo].[TacGia_TaiLieuSC] CHECK CONSTRAINT [FK_TacGia_TaiLieuSC_TaiLieuSoftCopy]
GO
