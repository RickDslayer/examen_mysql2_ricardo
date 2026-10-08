Examen donde se tenia que resolver la siguente consulta:
Crea una consulta SQL que muestre el nombre del usuario, el tipo de membresía y el total pagado por reservas de todos los usuarios que tengan una membresía activa.

* La consulta debe incluir al menos una unión (JOIN) entre las tablas de usuarios, membresías, pagos y reservas.
* Muestra solo a los usuarios cuyo total pagado por reservas sea mayor a 100 dólares o en cualquier coneda que se maneje en los registros.
* Ordena los resultados del mayor al menor total pagado.

solucion

1. Primero liste los nombres y apellidos de los usuarios luego el tipo de membresia y por ultimo el calculo de lo pagado.
2. Una factura puede cobrar varias cosas a la vez: la reserva y algún servicio adicional. Por eso no se puede tomar todo lo pagado y decir que fue por la reserva.
Lo que hace la fórmula es repartir el pago. Primero mira qué parte de la factura corresponde a la reserva y luego toma esa misma parte del pago.
Este calculo se hace porque el sistema en la factura final coloca no solo las reservas si no servicios adicionales que se tenia
3. luego prodeci a filtrar la informacion entre los que tuvieran membresia activa, ya tuvieran el pago hecho, que el total pagado fuera mayor de 100.