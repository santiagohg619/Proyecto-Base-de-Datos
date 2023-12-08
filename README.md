# Proyecto-Base-de-Datos
Proyecto donde se desarrolla una base de datos que emula un negocio de comercio electrónico.

Se entrega el documento donde se especifican las necesidades del sistema para su correcto su funcionamiento.

#Tablas

Tabla: despacho
NUM_DESPACHO (int): Identificador único del despacho.
ID_EMPLEADO (int): Identificador del empleado asociado al despacho.
FECHA (date): Fecha en que se realizó el despacho.
ID_DIRECC (int): Identificador de la dirección de despacho.

Tabla: detalle
IDDETALLE (int): Identificador único del detalle.
ID_PEDIDO (int): Identificador del pedido asociado al detalle.
NUMERO_DESPACHO (int): Número de despacho asociado al detalle.
REFERENCIA_P (int): Referencia del producto en el detalle.
CANTIDAD (int): Cantidad de productos en el detalle.

Tabla: direccion
IDDIRECC (int): Identificador único de la dirección.
CEDULA_USUARIO (int): Identificador del usuario asociado a la dirección.
DESCRIPCIONDIRECC (varchar): Descripción de la dirección.
BARRIO (varchar): Nombre del barrio.
CIUDAD (varchar): Nombre de la ciudad.
DEPARTAMENTO (varchar): Nombre del departamento.

Tabla: empleado
IDEMPLEADO (int): Identificador único del empleado.
NOMBRE_EMPLEADO (varchar): Nombre del empleado.

Tabla: linea
IDLINEA (int): Identificador único de la línea de productos.
DESCRIPCION_LINEA (varchar): Descripción de la línea de productos.

Tabla: pedido
IDPEDIDO (int): Identificador único del pedido.
CEDULA_US (int): Identificador del usuario asociado al pedido.
FECHA_PEDIDO (date): Fecha en que se realizó el pedido.
VALOR_TOTAL (int): Valor total del pedido.

Tabla: producto
REFERENCIA (int): Referencia única del producto.
NIT_TIENDA (int): NIT de la tienda asociada al producto.
DESCRIPCION (varchar): Descripción del producto.
COSTO_COMPRA (int): Costo de compra del producto.
PESO (int): Peso del producto.
PRECIO (int): Precio de venta del producto.
LINEA_PRODUCTO (int): Identificador de la línea de productos a la que pertenece.
TIEMPO_GARANTIA (varchar): Tiempo de garantía del producto.

Tabla: tienda
NIT (int): Identificador único del NIT de la tienda.
IDEMP (int): Identificador del empleado asociado a la tienda.
NOMBRE_TIENDA (varchar): Nombre de la tienda.
DIRECCION_TIENDA (varchar): Dirección de la tienda.
CORREO_TIENDA (varchar): Correo electrónico de la tienda.
TELEFONO_TIENDA (varchar): Número de teléfono de la tienda.

Tabla: usuario
CEDULA (int): Identificador único de la cédula del usuario.
NOMBRE (varchar): Nombre del usuario.
CORREO (varchar): Correo electrónico del usuario.
CEL (varchar): Número de teléfono celular del usuario.





