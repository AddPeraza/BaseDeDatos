USE [ProyectoFinal]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[id_categoria] [int] NOT NULL,
	[CategoriaDescripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Domicilio] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[id_Tarjetapts] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre Empleado] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasdePago]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasdePago](
	[id_formaPago] [int] IDENTITY(1,1) NOT NULL,
	[Metodo de Pago] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FormasdePago] PRIMARY KEY CLUSTERED 
(
	[id_formaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoDetalle]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoDetalle](
	[id_pedido] [int] NOT NULL,
	[id_pedidoLinea] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_PedidoDetalle] PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC,
	[id_pedidoLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[id_pedido] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[fecha de pedido] [datetime] NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[ProductoDescripcion] [varchar](50) NOT NULL,
	[Precio] [money] NOT NULL,
	[id_categoria] [int] NOT NULL,
	[UnidadMedida] [varchar](5) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarjetaPuntos]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarjetaPuntos](
	[id_Tarjetapts] [int] IDENTITY(1,1) NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[Vigencia] [date] NULL,
	[Porcentajepuntos] [smallint] NULL,
	[NumeroTarjeta] [varchar](10) NULL,
	[Puntos_Acumulados] [int] NULL,
 CONSTRAINT [PK_TarjetaPuntos] PRIMARY KEY CLUSTERED 
(
	[id_Tarjetapts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta Detalle]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta Detalle](
	[id_venta] [int] NOT NULL,
	[id_ventaDetalle] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[importe] [int] NOT NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_Venta Detalle] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC,
	[id_ventaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 17/10/2023 02:13:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_venta] [int] NOT NULL,
	[id_pedido] [int] IDENTITY(1,1) NOT NULL,
	[fecha de venta] [datetime] NOT NULL,
	[id_formaPago] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
 CONSTRAINT [PK_Ventas_1] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (1, N'Equipo de computo')
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (2, N'Celulares')
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (3, N'Tarjetas de video')
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (4, N'Impresoras')
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (5, N'Camaras')
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (6, N'Scanner')
INSERT [dbo].[Categorias] ([id_categoria], [CategoriaDescripcion]) VALUES (7, N'Cableado')
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id_Cliente], [Nombre], [Domicilio], [Telefono], [id_Tarjetapts]) VALUES (1, N'Edgardo Mercado', N'Los arcos 242', N'6622555555', NULL)
INSERT [dbo].[Clientes] ([Id_Cliente], [Nombre], [Domicilio], [Telefono], [id_Tarjetapts]) VALUES (2, N'Adderly Peraza', N'Los altares', N'6622222222', 2)
INSERT [dbo].[Clientes] ([Id_Cliente], [Nombre], [Domicilio], [Telefono], [id_Tarjetapts]) VALUES (3, N'Karla Herrera', N'Blvd Solidaridad 56', N'6622212121', 3)
INSERT [dbo].[Clientes] ([Id_Cliente], [Nombre], [Domicilio], [Telefono], [id_Tarjetapts]) VALUES (4, N'Omar', N'Calle 1', N'6623232325', NULL)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([id_empleado], [Nombre Empleado], [Apellido], [Direccion], [Telefono]) VALUES (1, N'Jose', N'Mercado', N'Las Granjas', N'6625252525')
INSERT [dbo].[Empleados] ([id_empleado], [Nombre Empleado], [Apellido], [Direccion], [Telefono]) VALUES (3, N'Arturo', N'Rodriguez', N'Intugo', N'6625454545')
INSERT [dbo].[Empleados] ([id_empleado], [Nombre Empleado], [Apellido], [Direccion], [Telefono]) VALUES (4, N'Jose', N'Favela', N'Metrocentro', N'662363950')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[FormasdePago] ON 

INSERT [dbo].[FormasdePago] ([id_formaPago], [Metodo de Pago]) VALUES (1, N'Efectivo')
INSERT [dbo].[FormasdePago] ([id_formaPago], [Metodo de Pago]) VALUES (2, N'TDD')
INSERT [dbo].[FormasdePago] ([id_formaPago], [Metodo de Pago]) VALUES (3, N'TDC')
INSERT [dbo].[FormasdePago] ([id_formaPago], [Metodo de Pago]) VALUES (4, N'TDP')
SET IDENTITY_INSERT [dbo].[FormasdePago] OFF
GO
INSERT [dbo].[PedidoDetalle] ([id_pedido], [id_pedidoLinea], [id_producto], [cantidad]) VALUES (1, 1, 1, 4)
INSERT [dbo].[PedidoDetalle] ([id_pedido], [id_pedidoLinea], [id_producto], [cantidad]) VALUES (1, 2, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([id_pedido], [id_cliente], [id_empleado], [fecha de pedido]) VALUES (1, 2, 1, CAST(N'2023-10-16T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id_producto], [ProductoDescripcion], [Precio], [id_categoria], [UnidadMedida]) VALUES (1, N'Iphone 14 Pro MAX', 20000.0000, 2, N'PZA')
INSERT [dbo].[Productos] ([id_producto], [ProductoDescripcion], [Precio], [id_categoria], [UnidadMedida]) VALUES (2, N'RTX 3050', 3500.0000, 3, N'PZA')
INSERT [dbo].[Productos] ([id_producto], [ProductoDescripcion], [Precio], [id_categoria], [UnidadMedida]) VALUES (3, N'Laptop DELL', 5000.0000, 1, N'PZA')
INSERT [dbo].[Productos] ([id_producto], [ProductoDescripcion], [Precio], [id_categoria], [UnidadMedida]) VALUES (6, N'Iphone 14 pro', 15000.0000, 2, N'PZA')
INSERT [dbo].[Productos] ([id_producto], [ProductoDescripcion], [Precio], [id_categoria], [UnidadMedida]) VALUES (7, N'Webcam Logitech', 250.0000, 5, N'PZA')
INSERT [dbo].[Productos] ([id_producto], [ProductoDescripcion], [Precio], [id_categoria], [UnidadMedida]) VALUES (8, N'Iphone 14', 10000.0000, 2, N'PZA')
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[TarjetaPuntos] ON 

INSERT [dbo].[TarjetaPuntos] ([id_Tarjetapts], [id_Cliente], [Vigencia], [Porcentajepuntos], [NumeroTarjeta], [Puntos_Acumulados]) VALUES (1, 1, CAST(N'2024-10-17' AS Date), 5, N'12345678', 75)
INSERT [dbo].[TarjetaPuntos] ([id_Tarjetapts], [id_Cliente], [Vigencia], [Porcentajepuntos], [NumeroTarjeta], [Puntos_Acumulados]) VALUES (2, 2, CAST(N'2024-10-17' AS Date), 5, N'15141718', 3000)
INSERT [dbo].[TarjetaPuntos] ([id_Tarjetapts], [id_Cliente], [Vigencia], [Porcentajepuntos], [NumeroTarjeta], [Puntos_Acumulados]) VALUES (3, 3, CAST(N'2024-10-17' AS Date), 10, N'20212223', 350)
SET IDENTITY_INSERT [dbo].[TarjetaPuntos] OFF
GO
INSERT [dbo].[Venta Detalle] ([id_venta], [id_ventaDetalle], [id_producto], [cantidad], [importe], [precio]) VALUES (1, 1, 1, 3, 1500, 500)
INSERT [dbo].[Venta Detalle] ([id_venta], [id_ventaDetalle], [id_producto], [cantidad], [importe], [precio]) VALUES (1, 2, 2, 2, 7000, 3500)
INSERT [dbo].[Venta Detalle] ([id_venta], [id_ventaDetalle], [id_producto], [cantidad], [importe], [precio]) VALUES (2, 1, 3, 7, 3500, 500)
INSERT [dbo].[Venta Detalle] ([id_venta], [id_ventaDetalle], [id_producto], [cantidad], [importe], [precio]) VALUES (3, 3, 6, 2, 30000, 15000)
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([id_venta], [id_pedido], [fecha de venta], [id_formaPago], [id_cliente]) VALUES (1, 1, CAST(N'2023-10-16T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Ventas] ([id_venta], [id_pedido], [fecha de venta], [id_formaPago], [id_cliente]) VALUES (2, 2, CAST(N'2023-10-17T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[Ventas] ([id_venta], [id_pedido], [fecha de venta], [id_formaPago], [id_cliente]) VALUES (3, 3, CAST(N'2023-10-17T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[Ventas] ([id_venta], [id_pedido], [fecha de venta], [id_formaPago], [id_cliente]) VALUES (4, 4, CAST(N'2023-10-17T00:00:00.000' AS DateTime), 2, 2)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_TarjetaPuntos] FOREIGN KEY([id_Tarjetapts])
REFERENCES [dbo].[TarjetaPuntos] ([id_Tarjetapts])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_TarjetaPuntos]
GO
ALTER TABLE [dbo].[PedidoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidoDetalle_Pedidos] FOREIGN KEY([id_pedido])
REFERENCES [dbo].[Pedidos] ([id_pedido])
GO
ALTER TABLE [dbo].[PedidoDetalle] CHECK CONSTRAINT [FK_PedidoDetalle_Pedidos]
GO
ALTER TABLE [dbo].[PedidoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_PedidoDetalle_Productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[PedidoDetalle] CHECK CONSTRAINT [FK_PedidoDetalle_Productos]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Empleados] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Empleados]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
ALTER TABLE [dbo].[TarjetaPuntos]  WITH CHECK ADD  CONSTRAINT [FK_TarjetaPuntos_Clientes] FOREIGN KEY([id_Tarjetapts])
REFERENCES [dbo].[Clientes] ([Id_Cliente])
GO
ALTER TABLE [dbo].[TarjetaPuntos] CHECK CONSTRAINT [FK_TarjetaPuntos_Clientes]
GO
ALTER TABLE [dbo].[Venta Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Venta Detalle_Productos1] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Venta Detalle] CHECK CONSTRAINT [FK_Venta Detalle_Productos1]
GO
ALTER TABLE [dbo].[Venta Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Venta Detalle_Ventas] FOREIGN KEY([id_venta])
REFERENCES [dbo].[Ventas] ([id_venta])
GO
ALTER TABLE [dbo].[Venta Detalle] CHECK CONSTRAINT [FK_Venta Detalle_Ventas]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes1] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes1]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_FormasdePago1] FOREIGN KEY([id_formaPago])
REFERENCES [dbo].[FormasdePago] ([id_formaPago])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_FormasdePago1]
GO
