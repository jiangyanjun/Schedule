USE [master]
GO
/****** Object:  Database [db_paikesys]    Script Date: 17-5-12 下午 11:22:24 ******/
CREATE DATABASE [db_paikesys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_paikesys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_paikesys.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_paikesys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_paikesys_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_paikesys] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_paikesys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_paikesys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_paikesys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_paikesys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_paikesys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_paikesys] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_paikesys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_paikesys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_paikesys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_paikesys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_paikesys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_paikesys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_paikesys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_paikesys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_paikesys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_paikesys] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_paikesys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_paikesys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_paikesys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_paikesys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_paikesys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_paikesys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_paikesys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_paikesys] SET RECOVERY FULL 
GO
ALTER DATABASE [db_paikesys] SET  MULTI_USER 
GO
ALTER DATABASE [db_paikesys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_paikesys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_paikesys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_paikesys] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_paikesys] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_paikesys', N'ON'
GO
USE [db_paikesys]
GO
/****** Object:  Table [dbo].[t_admin]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_admin](
	[username] [nvarchar](50) NOT NULL,
	[userpwd] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_courseplan]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_courseplan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[courseid] [nvarchar](50) NULL,
	[coursename] [nvarchar](50) NULL,
	[khtype] [nvarchar](50) NULL,
	[score] [nvarchar](50) NULL,
	[xueshiall] [nvarchar](50) NULL,
	[xueshijiangshou] [nvarchar](50) NULL,
	[xueshishiyan] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[grade] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_courseplan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_coursetable]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_coursetable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[taskid] [nvarchar](50) NULL,
	[weekdays] [nvarchar](50) NULL,
	[sections] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_coursetable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_coursetask]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_coursetask](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xuhao] [nvarchar](50) NULL,
	[coursename] [nvarchar](50) NULL,
	[coursexingzhi] [nvarchar](50) NULL,
	[grade] [nvarchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[xueshiall] [nvarchar](50) NULL,
	[xueshijiangshou] [nvarchar](50) NULL,
	[xueshishiyan] [nvarchar](50) NULL,
	[xueshiallz] [nvarchar](50) NULL,
	[xueshijiangshouz] [nvarchar](50) NULL,
	[xueshishiyanz] [nvarchar](50) NULL,
	[zhouci] [nvarchar](50) NULL,
	[khtype] [nvarchar](50) NULL,
	[courserongliang] [nvarchar](50) NULL,
	[teachidz] [nvarchar](50) NULL,
	[teachidf] [nvarchar](50) NULL,
	[teachids] [nvarchar](50) NULL,
	[dianjiao] [nvarchar](50) NULL,
	[shuangyu] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[classroom] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_coursetask] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_major]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_major](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[nums] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_major] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_SecretSecuritypwd]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SecretSecuritypwd](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Users] [nvarchar](50) NULL,
	[problem] [nvarchar](50) NULL,
	[answer] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_SecretSecuritypwd] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_student]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [nvarchar](50) NOT NULL,
	[pwd] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[grade] [nvarchar](50) NOT NULL,
	[major] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_t_student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_taboo]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_taboo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[weekdays] [nvarchar](50) NULL,
	[sections] [nvarchar](50) NULL,
	[weeksstart] [nvarchar](50) NULL,
	[weeksend] [nvarchar](50) NULL,
	[tabootype] [nvarchar](50) NULL,
	[teachid] [nvarchar](50) NULL,
	[shenhe] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_taboo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_teacher]    Script Date: 17-5-12 下午 11:22:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teachid] [nvarchar](50) NULL,
	[pwd] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[zhicheng] [nvarchar](50) NULL,
	[xueli] [nvarchar](50) NULL,
 CONSTRAINT [PK_t_teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[t_admin] ([username], [userpwd]) VALUES (N'admin     ', N'admin     ')
SET IDENTITY_INSERT [dbo].[t_courseplan] ON 

INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (1, N'0001', N'计算机大讲坛    ', N'面授        ', N'1         ', N'12        ', N'6         ', N'6         ', N'计算机       ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (2, N'BG0000020X0', N'就业指导      ', N'考查        ', N'1.5       ', N'24        ', N'24        ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (3, N'BS0000025X0', N'社会实践      ', N'考查        ', N'0.5       ', N'8         ', N'0         ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (4, N'BS00705', N'电子工程训练II  ', N'考查        ', N'3         ', N'48        ', N'0         ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (5, N'BS0100025X0', N'生产实习      ', N'考查        ', N'3         ', N'48        ', N'0         ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (6, N'BT0200063X0', N'微波技术与天线   ', N'考试        ', N'3         ', N'48        ', N'42        ', N'6         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (7, N'BT0200098X0', N'专业外语（通信类） ', N'考查        ', N'2         ', N'32        ', N'32        ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (8, N'RZ0200022X0', N'宽带接入技术    ', N'考查        ', N'2         ', N'32        ', N'32        ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (9, N'RZ0200050X0', N'无线定位与GPS系统', N'考查        ', N'2         ', N'32        ', N'32        ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (10, N'XZ0200001X0', N'DSP原理及应用  ', N'考查        ', N'2         ', N'32        ', N'16        ', N'16        ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (11, N'XZ0200025X0', N'嵌入式系统与应用  ', N'考查        ', N'2         ', N'32        ', N'16        ', N'16        ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (12, N'XZ0200082X0', N'信息论与信道编码  ', N'考试        ', N'3         ', N'48        ', N'48        ', N'0         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (13, N'XZ0200083X0', N'现代通信网络与技术 ', N'考试        ', N'3         ', N'48        ', N'42        ', N'6         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (14, N'XZ0201010X0', N'现代光纤通信系统  ', N'考查        ', N'2         ', N'32        ', N'28        ', N'4         ', N'通信工程      ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (15, N'RZ0200016X0', N'电子信息对抗技术  ', N'考查        ', N'2         ', N'32        ', N'26        ', N'6         ', N'通信工程(卓越)  ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (16, N'RZ0200022X0', N'宽带接入技术    ', N'考查        ', N'2         ', N'32        ', N'32        ', N'0         ', N'通信工程(卓越)  ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (17, N'RZ0200027X0', N'软件无线电技术概论 ', N'考查        ', N'2         ', N'32        ', N'26        ', N'6         ', N'通信工程(卓越)  ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (18, N'RZ0200036X0', N'天线技术      ', N'考查        ', N'2         ', N'32        ', N'28        ', N'4         ', N'通信工程(卓越)  ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (19, N'RZ0200044X0', N'网络编程技术    ', N'考查        ', N'2         ', N'32        ', N'16        ', N'16        ', N'通信工程(卓越)  ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (20, N'RZ0200050X0', N'无线定位与GPS系统', N'考查        ', N'2         ', N'32        ', N'32        ', N'0         ', N'通信工程(卓越)  ', N'2013      ')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (21, N'RZ0200051X0', N'无线资源管理与网络规划优化', N'考查', N'2', N'32', N'32', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (22, N'RZ0200052X0', N'现代通信技术及标准', N'考查', N'2', N'32', N'32', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (23, N'RZ0200056X0', N'信息系统集成技术', N'考查', N'2', N'32', N'28', N'4', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (24, N'RZ0200091X0', N'光通信网络', N'考查', N'2', N'32', N'32', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (25, N'RZ0201008X0', N'通信网络仿真', N'考查', N'2', N'32', N'16', N'16', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (26, N'XZ0200103X0', N'微波通信技术', N'考查', N'2', N'32', N'28', N'4', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (27, N'XZ0201000X0', N'DSP设计基础', N'考查', N'2', N'32', N'16', N'16', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (28, N'XZ0201005X0', N'射频电路及CAD技术', N'考试', N'3', N'48', N'38', N'4', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (29, N'XZ0201010X0', N'现代光纤通信系统', N'考查', N'2', N'32', N'28', N'4', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (30, N'XZ0201011X0', N'现代交换技术', N'考查', N'3', N'48', N'42', N'6', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (31, N'XZ0201012X0', N'现代通信网络技术', N'考试', N'3', N'48', N'42', N'6', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (32, N'XZ0201013X0', N'现代移动通信系统', N'考试', N'3', N'48', N'42', N'6', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (33, N'XZ02Y1000X0', N'信息论与编码', N'考试', N'2', N'32', N'32', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (34, N'XZ02Y100120', N'扩频通信B', N'考试', N'2', N'32', N'32', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (35, N'BG0000020X0', N'就业指导', N'考查', N'1.5', N'24', N'24', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (36, N'BS0000025X0', N'社会实践', N'考查', N'0.5', N'8', N'0', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (37, N'BS00705', N'电子工程训练II', N'考查', N'3', N'48', N'0', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (38, N'BS0100025X0', N'生产实习', N'', N'3', N'48', N'0', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (39, N'BT0200063X0', N'微波技术与天线', N'考试', N'3', N'48', N'42', N'6', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (40, N'BT0200102X0', N'专业外语（信息类）', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (41, N'RZ0200004X0', N'RFID技术与应用', N'考查', N'2', N'32', N'26', N'6', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (42, N'RZ0200006X0', N'操作系统原理及Linux实现', N'考查', N'2', N'32', N'20', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (43, N'RZ0200019X0', N'光电技术与应用', N'考查', N'2', N'32', N'28', N'4', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (44, N'RZ0200022X0', N'宽带接入技术', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (45, N'RZ0200053X0', N'现代通信网络中的交换技术', N'考查', N'2', N'32', N'28', N'4', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (46, N'RZ0200069X0', N'测量学', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (47, N'RZ0200090X0', N'惯性导航原理及应用', N'考查', N'2', N'32', N'24', N'8', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (48, N'RZ0200120X0', N'GPS系统及其应用', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (49, N'RZ0202019X0', N'可编程ASIC原理及应用', N'考查', N'2', N'32', N'16', N'16', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (50, N'RZ0202028X0', N'天线与电波传播', N'考查', N'2', N'32', N'28', N'4', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (51, N'RZ0202063X0', N'航天器轨道动力学', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (52, N'XZ0200001X0', N'DSP原理及应用', N'考试', N'2', N'32', N'16', N'16', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (53, N'XZ0200089X0', N'信息论基础', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (54, N'XZ0202060X0', N'信息论与信息编码', N'考查', N'3', N'48', N'48', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (55, N'XZ0202061X1', N'嵌入式原理及应用', N'考查', N'2', N'32', N'16', N'16', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (56, N'BG0000020X0', N'就业指导', N'考查', N'1.5', N'24', N'24', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (57, N'BS0000025X0', N'社会实践', N'考查', N'0.5', N'8', N'0', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (58, N'BS00705', N'电子工程训练II', N'考查', N'3', N'48', N'0', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (59, N'BS0100025X0', N'生产实习', N'考查', N'3', N'48', N'0', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (60, N'BS0200028X0', N'生产实习', N'考查', N'3', N'48', N'0', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (61, N'BT0203005X2', N'光电子学（双语）', N'考试', N'3', N'48', N'42', N'6', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (62, N'BT0203012X0', N'微波技术', N'考查', N'2.5', N'40', N'36', N'4', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (63, N'BT0203019X0', N'专业外语（电子科学类）', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (64, N'RZ0200004X0', N'RFID技术与应用', N'考查', N'2', N'32', N'26', N'6', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (65, N'RZ0200011X0', N'电磁兼容', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (66, N'RZ0200016X0', N'电子信息对抗技术', N'考查', N'2', N'32', N'26', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (67, N'RZ0200021X0', N'局域网技术', N'考查', N'2', N'32', N'16', N'16', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (68, N'RZ0200022X0', N'宽带接入技术', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (69, N'RZ0200025X0', N'嵌入式系统与应用', N'考查', N'2', N'32', N'16', N'16', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (70, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (71, N'RZ0200104X0', N'DSP技术', N'考查', N'2', N'32', N'16', N'16', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (72, N'RZ0203023X0', N'现代交换技术', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (73, N'XZ0203024X1', N'微带电路', N'考查', N'2', N'32', N'28', N'4', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (74, N'XZ0203027X0', N'光电器件及应用', N'考查', N'2', N'32', N'28', N'4', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (75, N'BG0204005X0', N'就业指导', N'考查', N'1.5', N'24', N'24', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (76, N'BS0000025X0', N'社会实践', N'考查', N'0.5', N'8', N'0', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (77, N'BS00705', N'电子工程训练II', N'考查', N'3', N'48', N'0', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (78, N'BS0100025X0', N'生产实习', N'考查', N'3', N'48', N'0', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (79, N'BT0206003X0', N'IC设计基础与实践', N'考试', N'3.5', N'56', N'16', N'40', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (80, N'BT0206005X0', N'半导体集成电路', N'考试', N'4', N'64', N'64', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (81, N'BT0206019X0', N'专业外语（微电子类）', N'考查', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (82, N'RZ0200004X0', N'RFID技术与应用', N'考查', N'2', N'32', N'26', N'6', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (83, N'RZ0200011X0', N'电磁兼容', N'考查', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (84, N'RZ0200019X0', N'光电技术与应用', N'考查', N'2', N'32', N'28', N'4', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (85, N'RZ0200025X0', N'嵌入式系统与应用', N'考查', N'2', N'32', N'16', N'16', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (86, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (87, N'RZ0200075X0', N'微带电路', N'考查', N'2', N'32', N'28', N'4', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (88, N'RZ0200104X0', N'DSP技术', N'考查', N'2', N'32', N'16', N'16', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (89, N'XZ0206018X0', N'现代模拟集成电路原理及应用', N'考试', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (90, N'BG0000020X0', N'就业指导', N'考查', N'1.5', N'24', N'24', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (91, N'BS0000025X0', N'社会实践', N'考查', N'0.5', N'8', N'0', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (92, N'BS00705', N'电子工程训练II', N'考查', N'3', N'48', N'0', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (93, N'BS0100025X0', N'生产实习', N'考查', N'3', N'48', N'0', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (94, N'BT0205018X0', N'专业外语（信息对抗类）', N'考查', N'2', N'32', N'32', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (95, N'RZ0200011X0', N'电磁兼容', N'考查', N'2', N'32', N'32', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (96, N'RZ0200019X0', N'光电技术与应用', N'考查', N'2', N'32', N'28', N'4', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (97, N'RZ0200021X0', N'局域网技术', N'考查', N'2', N'32', N'16', N'16', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (98, N'RZ0200053X0', N'现代通信网络中的交换技术', N'考查', N'2', N'32', N'28', N'4', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (99, N'RZ0205014X0', N'雷达系统', N'考查', N'2', N'32', N'24', N'8', N'信息对抗技术', N'2013')
GO
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (100, N'XZ0200000X0', N'ARM原理及应用', N'考查', N'2', N'32', N'16', N'16', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (101, N'XZ0200001X0', N'DSP原理及应用', N'考试', N'2', N'32', N'16', N'16', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (102, N'XZ0205012X0', N'雷达原理与对抗技术', N'考试', N'3', N'48', N'32', N'16', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (103, N'BS0000035X0', N'形势与政策实践', N'考查', N'0.5', N'8', N'0', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (104, N'BS0200058X0', N'专业工程设计', N'考查', N'3', N'48', N'0', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (105, N'RZ0200027X0', N'软件无线电技术概论', N'考查', N'2', N'32', N'26', N'6', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (106, N'RZ0200036X0', N'天线技术', N'考查', N'2', N'32', N'28', N'4', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (107, N'RZ0200044X0', N'网络编程技术', N'考查', N'2', N'32', N'16', N'16', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (108, N'RZ0200050X0', N'无线定位与GPS系统', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (109, N'RZ0200051X0', N'无线资源管理与网络规划优化', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (110, N'RZ0200052X0', N'现代通信技术及标准', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (111, N'RZ0200056X0', N'信息系统集成技术', N'考查', N'2', N'32', N'28', N'4', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (112, N'RZ0200091X0', N'光通信网络', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (113, N'XZ0200103X0', N'微波通信技术', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (114, N'XZ0201000X0', N'DSP设计基础', N'考查', N'2', N'32', N'16', N'16', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (115, N'XZ0201004X2', N'扩频通信（双语教学）', N'考试', N'2', N'32', N'32', N'0', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (116, N'XZ0201005X0', N'射频电路及CAD技术', N'考试', N'3', N'48', N'38', N'4', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (117, N'XZ0201011X0', N'现代交换技术', N'考查', N'3', N'48', N'42', N'6', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (118, N'XZ0201013X0', N'现代移动通信系统', N'考试', N'3', N'48', N'42', N'6', N'通信工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (119, N'BS0000035X0', N'形势与政策实践', N'考查', N'0.5', N'8', N'0', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (120, N'BS0202033X0', N'信息系统综合实训', N'考查', N'3', N'48', N'0', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (121, N'BS0202065X0', N'导航系统综合实训', N'考查', N'3', N'48', N'0', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (122, N'RZ0200008X0', N'传感器原理与技术', N'考查', N'2', N'32', N'26', N'6', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (123, N'RZ0200022X0', N'宽带接入技术', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (124, N'RZ0200027X0', N'软件无线电技术概论', N'考查', N'2', N'32', N'26', N'6', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (125, N'RZ0200044X0', N'网络编程技术', N'考查', N'2', N'32', N'16', N'16', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (126, N'RZ0200052X0', N'现代通信技术及标准', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (127, N'RZ0200059X0', N'无线通信新技术', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (128, N'RZ0200068X0', N'编码技术', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (129, N'RZ0202066X0', N'卫星通信', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (130, N'XZ0200032X0', N'数字视频技术', N'考查', N'2', N'32', N'26', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (131, N'XZ0200067X0', N'GPS系统原理及应用', N'考查', N'3', N'48', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (132, N'XZ0200072X0', N'多系统融合技术', N'考查', N'3', N'48', N'24', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (133, N'XZ0201004X2', N'扩频通信（双语教学）', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (134, N'XZ0202021X0', N'模式识别', N'考查', N'2', N'32', N'26', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (135, N'XZ0202032X0', N'信号与系统及处理', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (136, N'XZ0202038X0', N'语音信号处理', N'考查', N'2', N'32', N'26', N'6', N'电子信息工程', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (137, N'BS0000035X0', N'形势与政策实践', N'考查', N'0.5', N'8', N'0', N'0', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (138, N'BS0200058X0', N'专业工程设计', N'考查', N'3', N'48', N'0', N'0', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (139, N'RZ0200027X0', N'软件无线电技术概论', N'考查', N'2', N'32', N'26', N'6', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (140, N'RZ0200051X0', N'无线资源管理与网络规划优化', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (141, N'XZ0200103X0', N'微波通信技术', N'考试', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (142, N'XZ0203001X0', N'电波传播与天线', N'考查', N'3', N'48', N'42', N'6', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (143, N'XZ0203006X0', N'光通信技术', N'考试', N'3', N'48', N'42', N'6', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (144, N'XZ0203007X0', N'光通信网络与交换', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (145, N'XZ0203010X0', N'微波电路及CAD技术', N'考试', N'3', N'48', N'38', N'4', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (146, N'XZ0203021X0', N'现代光电信息处理', N'考试', N'2', N'32', N'28', N'4', N'电子科学与技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (147, N'BS0000035X0', N'形势与政策实践', N'考查', N'0.5', N'8', N'0', N'0', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (148, N'BS0200058X0', N'专业工程设计', N'考查', N'3', N'48', N'0', N'0', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (149, N'RZ0200027X0', N'软件无线电技术概论', N'考查', N'2', N'32', N'26', N'6', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (150, N'RZ0200036X0', N'天线技术', N'考查', N'2', N'32', N'28', N'4', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (151, N'RZ0200052X0', N'现代通信技术及标准', N'考查', N'2', N'32', N'32', N'0', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (152, N'RZ0200056X0', N'信息系统集成技术', N'考查', N'2', N'32', N'28', N'4', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (153, N'RZ0200064X0', N'射频技术与仿真', N'考查', N'2', N'32', N'16', N'0', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (154, N'RZ0206009X0', N'集成电路反向设计基础', N'考查', N'1', N'16', N'0', N'16', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (155, N'RZ0206011X0', N'集成电路可测性设计与测试验证', N'考查', N'2', N'32', N'16', N'16', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (156, N'XZ0206000X0', N'ASIC设计原理及应用', N'考试', N'2', N'32', N'24', N'8', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (157, N'XZ0206004X0', N'VLSI设计基础', N'考试', N'2', N'32', N'28', N'4', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (158, N'XZ0206010X2', N'集成电路工艺（双语教学）', N'考试', N'2', N'32', N'32', N'0', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (159, N'XZ0206013X0', N'射频集成电路设计', N'考试', N'2', N'32', N'28', N'4', N'微电子学', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (160, N'BS0000035X0', N'形势与政策实践', N'考查', N'0.5', N'8', N'0', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (161, N'BS0200058X0', N'专业工程设计', N'考查', N'3', N'48', N'0', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (162, N'RZ0200027X0', N'软件无线电技术概论', N'考查', N'2', N'32', N'26', N'6', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (163, N'RZ0200044X0', N'网络编程技术', N'考查', N'2', N'32', N'16', N'16', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (164, N'RZ0200064X0', N'射频技术与仿真', N'考查', N'2', N'32', N'16', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (165, N'RZ0205008X0', N'JAVA程序设计', N'考查', N'2', N'32', N'24', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (166, N'RZ0205009X0', N'Android应用与开发', N'考查', N'2', N'32', N'20', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (167, N'RZ0205015X0', N'信息安全技术', N'考查', N'3', N'48', N'42', N'6', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (168, N'RZ0205016X0', N'嵌入式LINUX应用与开发', N'考查', N'2', N'32', N'20', N'12', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (169, N'RZ0205020X0', N'扩频通信', N'考查', N'2', N'32', N'32', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (170, N'XZ0200065X0', N'WINDOWS程序设计', N'考查', N'2', N'32', N'26', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (171, N'XZ0200066X0', N'密码算法与设计（双语教学）', N'考查', N'2', N'32', N'24', N'0', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (172, N'XZ0205013X0', N'网络对抗技术', N'考试', N'3', N'48', N'32', N'16', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (173, N'XZ0205017X0', N'通信对抗技术', N'考试', N'2', N'32', N'26', N'6', N'信息对抗技术', N'2012')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (174, N'BG0000048X0', N'形势与政策3', N'考查', N'0.5', N'8', N'8', N'0', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (175, N'BS0000052X0', N'大学生安全教育3', N'考查', N'0.5', N'8', N'8', N'0', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (176, N'BS0200020X0', N'基础工程设计', N'考查', N'2', N'32', N'0', N'0', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (177, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', N'1', N'16', N'0', N'0', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (178, N'BT0200010X0', N'电磁场', N'考试', N'3.5', N'56', N'54', N'2', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (179, N'BT0200046X0', N'微机原理与接口技术1', N'考试', N'3.5', N'56', N'56', N'0', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (180, N'BT020006111', N'计算机网络A（外文教材）', N'考试', N'3.5', N'56', N'48', N'0', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (181, N'RZ0200002X0', N'EDA技术', N'考查', N'2', N'32', N'8', N'24', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (182, N'RZ0200009X0', N'单片机原理及应用', N'考查', N'2', N'32', N'16', N'16', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (183, N'XZ0201007X0', N'锁相与频率合成', N'考查', N'2', N'32', N'28', N'4', N'通信工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (184, N'BG0000048X0', N'形势与政策3', N'考查', N'0.5', N'8', N'8', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (185, N'BG0200002X0', N'EDA技术', N'考试', N'2', N'32', N'8', N'24', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (186, N'BS0000052X0', N'大学生安全教育3', N'考查', N'0.5', N'8', N'8', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (187, N'BS020004013', N'通信原理A实验', N'考查', N'1', N'16', N'0', N'16', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (188, N'BT020003910', N'通信原理A', N'考试', N'4', N'64', N'64', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (189, N'BT0200063X0', N'微波技术与天线', N'考查', N'3', N'48', N'42', N'6', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (190, N'BT0200096X0', N'计算机通信与网络', N'考试', N'3.5', N'56', N'40', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (191, N'BT0200098X0', N'专业外语（通信类）', N'考查', N'2', N'32', N'32', N'0', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (192, N'BT02Y1010X0', N'单片微型计算机与接口技术', N'考试', N'3.5', N'56', N'28', N'28', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (193, N'RZ0200004X0', N'RFID技术与应用', N'考查', N'2', N'32', N'26', N'6', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (194, N'RZ0200026X0', N'软件技术基础', N'考查', N'2', N'32', N'24', N'8', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (195, N'RZ0200095X0', N'FPGA通信设计基础', N'考查', N'2', N'32', N'16', N'16', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (196, N'RZ02Y1012X0', N'嵌入式系统', N'考查', N'2', N'32', N'16', N'16', N'通信工程(卓越)', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (197, N'BG0000048X0', N'形势与政策3', N'考查', N'0.5', N'8', N'8', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (198, N'BS0000052X0', N'大学生安全教育3', N'考查', N'0.5', N'8', N'8', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (199, N'BS0200020X0', N'基础工程设计', N'考查', N'2', N'32', N'0', N'0', N'电子信息工程', N'2013')
GO
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (200, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', N'1', N'16', N'0', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (201, N'BT0200002X0', N'EDA技术', N'考查', N'2', N'32', N'8', N'24', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (202, N'BT0200010X0', N'电磁场', N'考试', N'3.5', N'56', N'54', N'2', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (203, N'BT0200046X0', N'微机原理与接口技术1', N'考试', N'3.5', N'56', N'56', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (204, N'BT020006111', N'计算机网络A（外文教材）', N'考试', N'3.5', N'56', N'48', N'0', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (205, N'RZ0200009X0', N'单片机原理及应用', N'考查', N'2', N'32', N'16', N'16', N'电子信息工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (206, N'BG0000048X0', N'形势与政策3', N'考查', N'0.5', N'8', N'8', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (207, N'BS0000052X0', N'大学生安全教育3', N'考查', N'0.5', N'8', N'8', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (208, N'BS0200020X0', N'基础工程设计', N'考查', N'2', N'32', N'0', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (209, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', N'1', N'16', N'0', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (210, N'BT0200002X0', N'EDA技术', N'考查', N'2', N'32', N'8', N'24', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (211, N'BT0200010X0', N'电磁场', N'考试', N'3.5', N'56', N'54', N'2', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (212, N'BT0200046X0', N'微机原理与接口技术1', N'考试', N'3.5', N'56', N'56', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (213, N'BT0203026X0', N'光学工程', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (214, N'RZ0200009X0', N'单片机原理及应用', N'考查', N'2', N'32', N'16', N'16', N'电子科学与技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (215, N'BG0000048X0', N'形势与政策3', N'考查', N'0.5', N'8', N'8', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (216, N'BS0000052X0', N'大学生安全教育3', N'考查', N'0.5', N'8', N'8', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (217, N'BS0200020X0', N'基础工程设计', N'考查', N'2', N'32', N'0', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (218, N'BT0200071X0', N'电磁场与微波技术', N'考试', N'4', N'64', N'60', N'4', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (219, N'BT0206006X0', N'半导体物理', N'考试', N'3', N'48', N'40', N'8', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (220, N'BT0206017X0', N'微电子技术基础', N'考试', N'3', N'48', N'40', N'8', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (221, N'RZ0200009X0', N'单片机原理及应用', N'考查', N'2', N'32', N'16', N'16', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (222, N'RZ0200032X0', N'数字视频技术', N'考查', N'2', N'32', N'26', N'0', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (223, N'XZ0206012X0', N'计算机组成与体系结构', N'考试', N'4', N'64', N'56', N'8', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (224, N'XZ0206015X0', N'数字系统设计', N'考试', N'3.5', N'56', N'40', N'16', N'微电子科学与工程', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (225, N'BG0000048X0', N'形势与政策3', N'考查', N'0.5', N'8', N'8', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (226, N'BS0000052X0', N'大学生安全教育3', N'考查', N'0.5', N'8', N'8', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (227, N'BS0200020X0', N'基础工程设计', N'考查', N'2', N'32', N'0', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (228, N'BS0200047X3', N'微机原理与接口技术1实验', N'考查', N'1', N'16', N'0', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (229, N'BT0200002X0', N'EDA技术', N'考查', N'2', N'32', N'8', N'24', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (230, N'BT0200046X0', N'微机原理与接口技术1', N'考试', N'3.5', N'56', N'56', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (231, N'BT020006111', N'计算机网络A（外文教材）', N'考试', N'3.5', N'56', N'48', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (232, N'BT0200071X0', N'电磁场与微波技术', N'考试', N'4', N'64', N'60', N'4', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (233, N'BT0200116X0', N'数据库原理及应用', N'考查', N'2', N'32', N'24', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (234, N'BT0205004X0', N'操作系统原理及应用', N'考查', N'3', N'48', N'32', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (235, N'RZ0200009X0', N'单片机原理及应用', N'考查', N'2', N'32', N'16', N'16', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (236, N'RZ0200062X0', N'行业法规讲座', N'考查', N'1', N'16', N'16', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (237, N'RZ0205019X0', N'面向对象程序设计', N'考查', N'2', N'32', N'24', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (238, N'XZ0205011X0', N'信息编码与加密', N'考试', N'2', N'32', N'24', N'0', N'信息对抗技术', N'2013')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (239, N'BG0000030X0', N'体育3', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (240, N'BG0000041X0', N'中国近现代史纲要', N'考查', N'2', N'32', N'24', N'8', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (241, N'BG0000177X0', N'形势与政策2', N'考查', N'0.5', N'8', N'8', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (242, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (243, N'BJ000000510', N'大学物理A2', N'考查', N'3', N'48', N'48', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (244, N'BJ0000013X0', N'概率论', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (245, N'BJ000030320', N'复变函数B', N'考查', N'2', N'32', N'32', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (246, N'BS0000033X0', N'物理实验2', N'考查', N'1.5', N'24', N'0', N'24', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (247, N'BS0000180X0', N'英语强化', N'考查', N'0', N'0', N'0', N'16', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (248, N'BS0200024X3', N'模拟电子技术实验', N'考查', N'1', N'16', N'0', N'16', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (249, N'BT020007920', N'模拟电子技术B', N'考查', N'4', N'64', N'64', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (250, N'BT0200097X0', N'信号与系统分析', N'考查', N'3.5', N'56', N'56', N'0', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (251, N'RZ0200026X0', N'软件技术基础', N'考查', N'2', N'32', N'24', N'8', N'通信工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (252, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'通信工程(卓越)', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (253, N'BG0000030X0', N'体育3', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (254, N'BG0000041X0', N'中国近现代史纲要', N'考查', N'2', N'32', N'24', N'8', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (255, N'BG0000177X0', N'形势与政策2', N'考查', N'0.5', N'8', N'8', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (256, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (257, N'BJ000000510', N'大学物理A2', N'考查', N'3', N'48', N'48', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (258, N'BJ0000013X0', N'概率论', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (259, N'BJ000030320', N'复变函数B', N'考查', N'2', N'32', N'32', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (260, N'BS0000033X0', N'物理实验2', N'考查', N'1.5', N'24', N'0', N'24', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (261, N'BS0000180X0', N'英语强化', N'考查', N'0', N'0', N'0', N'16', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (262, N'BS0200024X3', N'模拟电子技术实验', N'考查', N'1', N'16', N'0', N'16', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (263, N'BT020007920', N'模拟电子技术B', N'考查', N'4', N'64', N'64', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (264, N'BT0200081X0', N'数据结构', N'考查', N'2', N'32', N'26', N'6', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (265, N'BT0200097X0', N'信号与系统分析', N'考查', N'3.5', N'56', N'56', N'0', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (266, N'RZ0200026X0', N'软件技术基础', N'考查', N'2', N'32', N'24', N'8', N'电子信息工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (267, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'电子信息工程（卓越）', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (268, N'BG0000030X0', N'体育3', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (269, N'BG0000041X0', N'中国近现代史纲要', N'考查', N'2', N'32', N'24', N'8', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (270, N'BG0000177X0', N'形势与政策2', N'考查', N'0.5', N'8', N'8', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (271, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (272, N'BJ000000510', N'大学物理A2', N'考查', N'3', N'48', N'48', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (273, N'BJ0000013X0', N'概率论', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (274, N'BJ000030320', N'复变函数B', N'考查', N'2', N'32', N'32', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (275, N'BS0000033X0', N'物理实验2', N'考查', N'1.5', N'24', N'0', N'24', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (276, N'BS0000180X0', N'英语强化', N'考查', N'1', N'16', N'0', N'16', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (277, N'BS0200024X3', N'模拟电子技术实验', N'考查', N'1', N'16', N'0', N'16', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (278, N'BT020007920', N'模拟电子技术B', N'考试', N'4', N'64', N'64', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (279, N'BT0200097X0', N'信号与系统分析', N'考试', N'3.5', N'56', N'56', N'0', N'电子科学与技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (280, N'BG0000030X0', N'体育3', N'考查', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (281, N'BG0000041X0', N'中国近现代史纲要', N'考查', N'2', N'32', N'24', N'8', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (282, N'BG0000177X0', N'形势与政策2', N'考查', N'0.5', N'8', N'8', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (283, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (284, N'BJ000000510', N'大学物理A2', N'考查', N'3', N'48', N'48', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (285, N'BJ0000013X0', N'概率论', N'考查', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (286, N'BJ000030320', N'复变函数B', N'考查', N'2', N'32', N'32', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (287, N'BS0000033X0', N'物理实验2', N'考查', N'1.5', N'24', N'0', N'24', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (288, N'BS0000180X0', N'英语强化', N'考查', N'0', N'0', N'0', N'16', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (289, N'BS0200024X3', N'模拟电子技术实验', N'考查', N'1', N'16', N'0', N'16', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (290, N'BT020007920', N'模拟电子技术B', N'考查', N'4', N'64', N'64', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (291, N'BT0200097X0', N'信号与系统分析', N'考查', N'3.5', N'56', N'56', N'0', N'微电子科学与工程', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (292, N'BG0000030X0', N'体育3', N'考查', N'2', N'32', N'32', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (293, N'BG0000041X0', N'中国近现代史纲要', N'考查', N'2', N'32', N'24', N'8', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (294, N'BG0000177X0', N'形势与政策2', N'考查', N'0.5', N'8', N'8', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (295, N'BG0000334X0', N'大学英语3', N'考查', N'3.5', N'56', N'56', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (296, N'BJ000000510', N'大学物理A2', N'考查', N'3', N'48', N'48', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (297, N'BJ0000013X0', N'概率论', N'考查', N'2', N'32', N'32', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (298, N'BJ000030320', N'复变函数B', N'考查', N'2', N'32', N'32', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (299, N'BS0000033X0', N'物理实验2', N'考查', N'1.5', N'24', N'0', N'24', N'信息对抗技术', N'2014')
GO
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (300, N'BS0000180X0', N'英语强化', N'考查', N'0', N'0', N'0', N'16', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (301, N'BS0200024X3', N'模拟电子技术实验', N'考查', N'1', N'16', N'0', N'16', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (302, N'BT020007920', N'模拟电子技术B', N'考查', N'4', N'64', N'64', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (303, N'BT0200097X0', N'信号与系统分析', N'考查', N'3.5', N'56', N'56', N'0', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (304, N'BT0205022X0', N'数据结构与算法分析', N'考查', N'3.5', N'56', N'44', N'12', N'信息对抗技术', N'2014')
INSERT [dbo].[t_courseplan] ([ID], [courseid], [coursename], [khtype], [score], [xueshiall], [xueshijiangshou], [xueshishiyan], [major], [grade]) VALUES (305, N'RZ0200026X0', N'软件技术基础', N'考查', N'2', N'32', N'24', N'8', N'信息对抗技术', N'2014')
SET IDENTITY_INSERT [dbo].[t_courseplan] OFF
SET IDENTITY_INSERT [dbo].[t_coursetable] ON 

INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (1, N'2', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (2, N'2', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (3, N'4', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (4, N'4', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (5, N'5', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (6, N'5', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (7, N'6', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (8, N'6', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (9, N'12', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (10, N'12', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (11, N'7', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (12, N'7', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (13, N'8', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (14, N'8', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (15, N'9', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (16, N'9', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (17, N'10', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (18, N'10', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (19, N'11', N'2', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (20, N'11', N'4', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (21, N'13', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (22, N'13', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (23, N'19', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (24, N'19', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (25, N'39', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (26, N'39', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (27, N'40', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (28, N'40', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (29, N'41', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (30, N'41', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (31, N'42', N'1', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (32, N'42', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (33, N'43', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (34, N'43', N'3', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (35, N'44', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (36, N'37', N'2', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (37, N'37', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (38, N'38', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (39, N'38', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (40, N'14', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (41, N'14', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (42, N'15', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (43, N'15', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (44, N'16', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (45, N'16', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (46, N'17', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (47, N'17', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (48, N'18', N'2', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (49, N'18', N'4', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (50, N'20', N'2', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (51, N'20', N'4', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (52, N'21', N'3', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (53, N'22', N'2', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (54, N'23', N'2', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (55, N'24', N'4', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (56, N'25', N'4', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (57, N'26', N'1', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (58, N'27', N'5', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (59, N'29', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (60, N'29', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (61, N'30', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (62, N'30', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (63, N'31', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (64, N'31', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (65, N'32', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (66, N'32', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (67, N'33', N'2', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (68, N'33', N'4', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (69, N'34', N'2', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (70, N'34', N'4', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (71, N'35', N'2', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (72, N'35', N'4', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (73, N'36', N'3', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (74, N'36', N'5', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (75, N'48', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (76, N'48', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (77, N'49', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (78, N'49', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (79, N'50', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (80, N'50', N'3', N'1')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (81, N'51', N'2', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (82, N'51', N'4', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (83, N'52', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (84, N'52', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (85, N'53', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (86, N'53', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (87, N'45', N'1', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (88, N'45', N'3', N'2')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (89, N'46', N'1', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (90, N'46', N'3', N'3')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (91, N'47', N'1', N'4')
INSERT [dbo].[t_coursetable] ([ID], [taskid], [weekdays], [sections]) VALUES (92, N'47', N'3', N'1')
SET IDENTITY_INSERT [dbo].[t_coursetable] OFF
SET IDENTITY_INSERT [dbo].[t_coursetask] ON 

INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (1, NULL, N'课程名称', N'课程名称', N'2010', N'计算机       ', N'12', N'6', N'6', N'8', N'6', N'2', N'1-16', N'考核方式', N'50', N'1001', N'1001', N'1001', N'101', N'否', N'备注', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (2, N'15161104', N'射频技术与仿真', N'专业必修', N'2012', N'电子科学与技术', N'32', N'16', N'16', N'', N'4', N'', N'1-8', N'考查', N'100', N'10000', N'10099', N'10131', N'1002
', N'否', N'任选70（后半学期）', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (4, N'15161106', N'光通信网络与交换', N'专业必修', N'2012', N'电子科学与技术', N'32', N'32', N'0', N'', N'4', N'', N'10-18', N'考查', N'100', N'10002', N'10100', N'', N'10023', N'否', N'限选88（后半学期）', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (5, N'15161107', N'光通信技术', N'专业必修', N'2012', N'电子科学与技术', N'48', N'42', N'6', N'', N'4', N'', N'9-16', N'考试', N'100', N'10003', N'', N'', N'10024', N'否', N'限选88（前半学期）', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (6, N'15161108', N'现代光电信息处理', N'专业必修', N'2012', N'电子科学与技术', N'32', N'32', N'0', N'', N'4', N'', N'1-14', N'考试', N'100', N'10004', N'', N'', N'1002
5', N'否', N'限选88（取消4学时实验）', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (7, N'15161109', N'电磁场', N'专业必修', N'2013', N'电子科学与技术', N'56', N'54', N'2', N'', N'4', N'', N'10-18', N'考试', N'100', N'10005', N'', N'10131', N'1002
6', N'否', N'必修167+190+118', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (8, N'15161110', N'电磁场', N'专业必修', N'2013', N'电子科学与技术', N'56', N'54', N'2', N'', N'4', N'', N'1-14', N'考试', N'100', N'10006', N'', N'10131', N'1002
7', N'否', N'《电磁场》于新华2课号、姜兴1课号、姜彦南2课号', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (9, N'15161111', N'电磁场', N'专业必修', N'2013', N'电子科学与技术', N'56', N'54', N'2', N'', N'4', N'', N'1-14', N'考试', N'100', N'10007', N'', N'10131', N'1002
6', N'否', N'黑板大点的教室', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (10, N'15161112', N'微波技术与天线', N'专业必修', N'2013', N'电子科学与技术', N'48', N'42', N'6', N'', N'4', N'', N'1-14', N'考试', N'100', N'10008', N'', N'10131', N'1001', N'否', N'必修60', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (11, N'15161113', N'电磁场与微波技术', N'专业必修', N'2013', N'电子科学与技术', N'64', N'60', N'4', N'', N'4', N'', N'1-12', N'考试', N'100', N'10009', N'', N'10131', N'1001', N'否', N'必修63+27', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (12, N'15161114', N'电波传播与天线', N'专业限选', N'2012', N'电子科学与技术', N'48', N'42', N'6', N'', N'4', N'', N'1-12', N'考查', N'100', N'10009', N'', N'10131', N'1001', N'否', N'限选88', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (13, N'15161115', N'光学工程', N'专业限选', N'2013', N'电子科学与技术', N'32', N'32', N'0', N'', N'4', N'', N'1-8', N'考试', N'100', N'10010', N'', N'', N'1001', N'否', N'必修118（排课在9-16周下午)', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (14, N'15161116', N'微机原理与接口技术I', N'专业必修', N'2013', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'90', N'10011', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (15, N'15161117', N'微机原理与接口技术I', N'专业必修', N'2013', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'90', N'10012', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (16, N'15161118', N'微机原理与接口技术I', N'专业必修', N'2013', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'90', N'10013', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (17, N'15161119', N'微机原理与接口技术I', N'专业必修', N'2013', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'90', N'10014', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (18, N'15161120', N'微机原理与接口技术I', N'专业必修', N'2013', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'90', N'10015', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (19, N'15161121', N'微机原理与接口技术I', N'专业必修', N'2012', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'90', N'10015', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (20, N'15161122', N'单片微型计算机与接口技术', N'专业必修', N'2013', N'电子信息工程', N'56', N'28', N'28', N'4', N'4', N'', N'1-7', N'考试', N'70', N'10017', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (21, N'15161123', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10018', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (22, N'15161124', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10018', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (23, N'15161125', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10012', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (24, N'15161126', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10020', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (25, N'15161127', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10020', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (26, N'15161128', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10021', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (27, N'15161129', N'单片机原理及应用', N'专业限选', N'2013', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'10-17', N'考试', N'100', N'10021', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (28, N'1516130', N'数字视频技术', N'专业限选', N'2013', N'电子信息工程', N'32', N'26', N'6', N'4', N'4', N'', N'10-17', N'考查', N'60', N'10022', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (29, N'15161131', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10023', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (30, N'15161132', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10024', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (31, N'15161133', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10025', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (32, N'15161134', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10026', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (33, N'15161135', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10027', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (34, N'15161136', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10028', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (35, N'15161137', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'64', N'64', N'', N'4', N'4', N'', N'1-16', N'考试', N'90', N'10029', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (36, N'15161138', N'信号与系统分析', N'专业必修', N'2014', N'电子信息工程', N'56', N'56', N'', N'4', N'4', N'', N'1-14', N'考试', N'70', N'10030', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (37, N'15161139', N'多系统融合技术', N'专业任选', N'2012', N'电子信息工程', N'48', N'24', N'24', N'4', N'4', N'', N'11-17', N'考查', N'100', N'10031', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (38, N'15161140', N'GPS系统原理及应用', N'专业任选', N'2012', N'电子信息工程', N'48', N'32', N'16', N'4', N'4', N'', N'1-8', N'考查', N'100', N'10032', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (39, N'15161141', N'语音信号处理', N'专业限选', N'2012', N'电子信息工程', N'32', N'26', N'6', N'4', N'4', N'', N'1-7', N'考试', N'100', N'10033', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (40, N'15161142', N'信号与系统及处理', N'专业限选', N'2012', N'电子信息工程', N'32', N'32', N'', N'4', N'4', N'', N'1-7', N'考试', N'100', N'10030', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (41, N'15161143', N'模式识别', N'专业限选', N'2012', N'电子信息工程', N'32', N'26', N'6', N'4', N'4', N'', N'8-14', N'考试', N'100', N'10027', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (42, N'15161144', N'数字视频技术', N'专业限选', N'2012', N'电子信息工程', N'32', N'26', N'6', N'4', N'4', N'', N'11-17', N'考试', N'100', N'10022', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (43, N'15161145', N'数字视频技术', N'专业限选', N'2012', N'电子信息工程', N'32', N'26', N'6', N'4', N'4', N'', N'11-17', N'考试', N'100', N'10022', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (44, N'15161146', N'DSP设计基础', N'专业限选', N'2012', N'电子信息工程', N'32', N'16', N'16', N'2', N'2', N'', N'9-16', N'考试', N'100', N'10039', N'', N'', N'1001', N'', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (45, N'15161147', N'锁相与频率合成', N'专业必修', N'2013', N'通信工程', N'32', N'28', N'4', N'', N'4', N'', N'9-15', N'考试', N'100', N'10040', N'', N'', N'1001', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (46, N'15161148', N'锁相与频率合成', N'专业必修', N'2013', N'通信工程', N'32', N'28', N'4', N'', N'4', N'', N'9-15', N'考试', N'100', N'10040', N'', N'', N'1001', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (47, N'15161149', N'通信电子电路', N'专业必修', N'2013', N'通信工程', N'72', N'56', N'16', N'', N'4', N'', N'1-16', N'考试', N'100', N'10042', N'', N'', N'1001', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (48, N'15161150', N'扩频通信（双语）', N'专业必修', N'2012', N'通信工程', N'32', N'32', N'', N'', N'4', N'', N'1-8', N'考试', N'140', N'10043', N'', N'', N'1001', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (49, N'15161151', N'扩频通信（双语）', N'专业必修', N'2012', N'通信工程', N'32', N'32', N'', N'', N'4', N'', N'1-8', N'考试', N'140', N'10044', N'', N'', N'1001', N'是', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (50, N'15161152', N'现代移动通信系统', N'专业限选', N'2012', N'通信工程', N'48', N'42', N'6', N'', N'4', N'', N'1-12', N'考试', N'140', N'10045', N'', N'', N'1001', N'否', N'待确定', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (51, N'15161153', N'现代交换技术', N'专业限选', N'2012', N'通信工程', N'48', N'42', N'6', N'', N'4', N'', N'1-11', N'考试', N'140', N'10046', N'', N'', N'1001', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (52, N'15161154', N'光通信网络', N'专业限选', N'2012', N'通信工程', N'32', N'32', N'', N'', N'4', N'', N'9-19', N'考试', N'100', N'10046', N'', N'', N'1001', N'否', N'', NULL)
INSERT [dbo].[t_coursetask] ([ID], [xuhao], [coursename], [coursexingzhi], [grade], [major], [xueshiall], [xueshijiangshou], [xueshishiyan], [xueshiallz], [xueshijiangshouz], [xueshishiyanz], [zhouci], [khtype], [courserongliang], [teachidz], [teachidf], [teachids], [dianjiao], [shuangyu], [remark], [classroom]) VALUES (53, N'15161155', N'软件无线电技术概论', N'专业限选', N'2012', N'通信工程', N'32', N'26', N'6', N'', N'4', N'', N'9-16', N'考试', N'100', N'10048', N'', N'', N'1001', N'否', N'', NULL)
SET IDENTITY_INSERT [dbo].[t_coursetask] OFF
SET IDENTITY_INSERT [dbo].[t_major] ON 

INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (1, N'计算机       ', N'计算机信息技术专业 ', N'12        ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (2, N'会记        ', N'会记        ', N'12        ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (3, N'通信工程      ', N'通信工程      ', N'167       ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (4, N'通信工程(卓越)  ', N'通信工程(卓越)  ', N'60        ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (5, N'电子信息工程    ', N'电子信息工程    ', N'188       ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (6, N'电子科学与技术   ', N'电子科学与技术   ', N'118       ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (7, N'微电子科学与工程  ', N'微电子科学与工程  ', N'63        ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (8, N'信息对抗技术    ', N'信息对抗技术    ', N'27        ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (9, N'微电子学      ', N'微电子学      ', N'0         ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (10, N'电子信息工程（卓越）', N'电子信息工程（卓越）', N'0         ')
INSERT [dbo].[t_major] ([id], [name], [remark], [nums]) VALUES (11, N'大数据分析     ', N'学习大数据分析   ', N'54        ')
SET IDENTITY_INSERT [dbo].[t_major] OFF
SET IDENTITY_INSERT [dbo].[t_SecretSecuritypwd] ON 

INSERT [dbo].[t_SecretSecuritypwd] ([ID], [Users], [problem], [answer]) VALUES (1, N'admin', N'我是管理员', N'1')
SET IDENTITY_INSERT [dbo].[t_SecretSecuritypwd] OFF
SET IDENTITY_INSERT [dbo].[t_student] ON 

INSERT [dbo].[t_student] ([ID], [studentId], [pwd], [name], [grade], [major]) VALUES (2, N'15161104', N'000000', N'张工', N'2012', N'电子科学与技术')
INSERT [dbo].[t_student] ([ID], [studentId], [pwd], [name], [grade], [major]) VALUES (3, N'15161104', N'000000', N'李梅', N'2012', N'电子科学与技术')
INSERT [dbo].[t_student] ([ID], [studentId], [pwd], [name], [grade], [major]) VALUES (4, N'15161106', N'000000', N'陶冶', N'2012', N'电子科学与技术')
INSERT [dbo].[t_student] ([ID], [studentId], [pwd], [name], [grade], [major]) VALUES (6, N'15161107', N'000000', N'李思', N'2012', N'电子科学与技术')
SET IDENTITY_INSERT [dbo].[t_student] OFF
SET IDENTITY_INSERT [dbo].[t_taboo] ON 

INSERT [dbo].[t_taboo] ([ID], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (3, N'2', N'1', N'1', N'1', N'0', N'admin', NULL)
INSERT [dbo].[t_taboo] ([ID], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (4, N'1', N'2', N'3', N'4', N'0', N'admin', NULL)
INSERT [dbo].[t_taboo] ([ID], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (5, N'1', N'1', N'2', N'2', N'0', N'admin', NULL)
INSERT [dbo].[t_taboo] ([ID], [weekdays], [sections], [weeksstart], [weeksend], [tabootype], [teachid], [shenhe]) VALUES (8, N'1', N'1', N'1', N'2', N'1', NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_taboo] OFF
SET IDENTITY_INSERT [dbo].[t_teacher] ON 

INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (2, N'10000', N'admin', N'李斌', N'特岗        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (3, N'10000', N'10000', N'李海鸥', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (4, N'10001', N'10001', N'曹卫平', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (5, N'10002', N'10002', N'陈明', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (6, N'10003', N'10003', N'陈名松', N'教授        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (7, N'10004', N'10004', N'蒋行国', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (8, N'10005', N'10005', N'于新华', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (9, N'10006', N'10006', N'姜兴', N'教授        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (10, N'10007', N'10007', N'姜彦南', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (11, N'10008', N'10008', N'高喜', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (12, N'10009', N'10009', N'李晓峰', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (13, N'10010', N'10010', N'陈辉', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (14, N'10011', N'10011', N'欧阳宁', N'教授        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (15, N'10012', N'10012', N'王岩红', N'高级实验师     ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (16, N'10013', N'10013', N'陈紫强', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (17, N'10014', N'10014', N'王娇', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (18, N'10015', N'10015', N'洪莉', N'高级实验师     ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (19, N'10017', N'10017', N'袁华', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (20, N'10018', N'10018', N'莫建文', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (21, N'10020', N'10020', N'符强', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (22, N'10021', N'10021', N'孙安青', N'讲师        ', N'学士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (23, N'10022', N'10022', N'蔡晓东', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (24, N'10023', N'10023', N'王 健', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (25, N'10024', N'10024', N'王国富', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (26, N'10025', N'10025', N'张顺岚', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (27, N'10026', N'10026', N'张法全', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (28, N'10027', N'10027', N'唐志芳', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (29, N'10028', N'10028', N'谢先明', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (30, N'10029', N'10029', N'蒋俊正', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (31, N'10030', N'10030', N'苏启常', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (32, N'10031', N'10031', N'孙希延', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (33, N'10032', N'10032', N'蔡成林', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (34, N'10033', N'10033', N'刘庆华', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (35, N'10039', N'10039', N'丁 勇', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (36, N'10040', N'10040', N'樊孝明', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (37, N'10042', N'10042', N'陈冬梅', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (38, N'10043', N'10043', N'郑霖', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (39, N'10044', N'10044', N'闫坤', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (40, N'10045', N'10045', N'仇洪冰', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (41, N'10046', N'10046', N'敖珺', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (42, N'10048', N'10048', N'赵利', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (43, N'10049', N'10049', N'符杰林', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (44, N'10050', N'10050', N'梁红玉', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (45, N'10052', N'10052', N'王吉平', N'高级实验师     ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (46, N'10053', N'10053', N'宁向延', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (47, N'10055', N'10055', N'覃远年', N'高级实验师     ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (48, N'10056', N'10056', N'王卫东', N'教授        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (49, N'10058', N'10058', N'周茜', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (50, N'10060', N'10060', N'归法弟', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (51, N'10061', N'10061', N'徐卫林', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (52, N'10062', N'10062', N'李秀东', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (53, N'10063', N'10063', N'肖功利', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (54, N'10064', N'10064', N'谢跃雷', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (55, N'10065', N'10065', N'韦雪明', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (56, N'10066', N'10066', N'岳宏卫', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (57, N'10068', N'10068', N'赵中华', N'工程师       ', N'学士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (58, N'10069', N'10069', N'陈小毛', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (59, N'10070', N'10070', N'韦保林', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (60, N'10072', N'10072', N'段吉海', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (61, N'10073', N'10073', N'晋良念', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (62, N'10074', N'10074', N'翟江辉', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (63, N'10077', N'10077', N'马春波', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (64, N'10078', N'10078', N'武小年', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (65, N'10079', N'10079', N'陶晓玲', N'副教授       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (66, N'10080', N'10080', N'何倩', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (67, N'10081', N'10081', N'黄桂敏', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (68, N'10082', N'10082', N'张润莲', N'副教授       ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (69, N'10083', N'10083', N'张向利', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (70, N'10084', N'10084', N'马  杰', N'讲师        ', N'学士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (71, N'10085', N'10085', N'李德明', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (72, N'10086', N'10086', N'黄建华', N'讲师        ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (73, N'10090', N'10090', N'刘联海', N'讲师        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (74, N'10091', N'10091', N'蒋留兵', N'研究员       ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (75, N'10092', N'10092', N'车俐', N'高级实验师     ', N'硕士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (76, N'10093', N'10093', N'韦永壮', N'教授        ', N'博士        ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (77, N'10099', N'10099', N'李跃', N'讲师        ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (78, N'10100', N'10100', N'童秀倩', N'讲师        ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (79, N'10101', N'10101', N'吴庚飞', N'讲师        ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (80, N'10102', N'10102', N'黄干', N'讲师        ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (81, N'10103', N'10103', N'曾坤', N'讲师        ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (82, N'10105', N'10105', N'伍欣', N'副教授       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (83, N'10106', N'10106', N'阳鑫磊', N'副教授       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (84, N'10107', N'10107', N'李会娟', N'副教授       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (85, N'10108', N'10108', N'陈达', N'副教授       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (86, N'10117', N'10117', N'赵颖', N'研究生       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (87, N'10128', N'10128', N'彭明', N'助工        ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (88, N'10131', N'10131', N'廖欣', N'实验师       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (89, N'10132', N'10132', N'蒋红艳', N'实验师       ', N'          ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (90, N'序', N'序', N'课     程', N'课程性质      ', N'年         ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (91, N'15161147', N'15161147', N'锁相与频率合成', N'专业必修      ', N'2013      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (92, N'15161149', N'15161149', N'通信电子电路', N'专业必修      ', N'2013      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (93, N'15161150', N'15161150', N'扩频通信（双语）', N'专业必修      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (94, N'15161152', N'15161152', N'现代移动通信系统', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (95, N'15161153', N'15161153', N'现代交换技术', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (96, N'15161154', N'15161154', N'光通信网络', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (97, N'15161155', N'15161155', N'软件无线电技术概论', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (98, N'15161156', N'15161156', N'宽带接入技术', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (99, N'15161157', N'15161157', N'无线定位与GPS系统', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (100, N'15161158', N'15161158', N'现代通信技术及标准', N'专业限选      ', N'2012      ')
GO
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (101, N'15161159', N'15161159', N'无线通信新技术', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (102, N'15161160', N'15161160', N'信息系统集成技术', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (103, N'15161161', N'15161161', N'无线资源管理与网络规划优化', N'专业限选      ', N'2012      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (104, N'15161162', N'15161162', N'专业外语（通信类）', N'专业必修      ', N'2013      ')
INSERT [dbo].[t_teacher] ([id], [teachid], [pwd], [name], [zhicheng], [xueli]) VALUES (105, N'15161163', N'15161163', N'FPGA通信设计基础', N'专业限选      ', N'2013      ')
SET IDENTITY_INSERT [dbo].[t_teacher] OFF
USE [master]
GO
ALTER DATABASE [db_paikesys] SET  READ_WRITE 
GO
