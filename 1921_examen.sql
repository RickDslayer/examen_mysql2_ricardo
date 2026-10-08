-- Descripción: Consulta para obtener el total pagado por reservas de usuarios con membresía activa y pagos realizados, 
            -- filtrando aquellos que han pagado más de 100.
select u.nombre,
		u.apellidos,
		tm.nombre,
        ROUND(SUM(p.monto * d.monto / f.total), 2) AS total_pagado_reservas -- Calcula el total pagado por reservas de cada usuario, 
                                                                            -- considerando el monto del pago proporcional al detalle de la factura.
        FROM usuario AS u
		JOIN membresia AS m ON m.id_usuario = u.id_usuario
		JOIN tipo_membresia AS tm ON tm.id_tipo   = m.id_tipo
		JOIN reserva AS r ON r.id_usuario = u.id_usuario
		JOIN detalle_factura AS d ON d.id_reserva = r.id_reserva
		JOIN factura AS f ON f.id_factura = d.id_factura
		JOIN pago AS p ON p.id_factura = f.id_factura
        WHERE m.estado = 'Activa'
		AND p.estado = 'Pagado'
		GROUP BY u.nombre
		HAVING total_pagado_reservas > 100
		ORDER BY total_pagado_reservas DESC;