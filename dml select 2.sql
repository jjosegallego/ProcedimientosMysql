select distinct entradasalidadinero.idTipoIngEg,entradasalidadinero.fechaES,entradasalidadinero.montoIE,
				personas.nombre, 
				ingresosegresos.idTipoIngEg as tipo, 
                tipoingeg.descripcion, 
                grupoingeg.descripcion 
	from entradasalidadinero
	inner join Personas on(entradasalidadinero.idPersonasQueRegistro=personas.id)
    inner join ingresosegresos on (entradasalidadinero.idTipoIngEg=ingresosegresos.id)
    inner join tipoingeg on (ingresosegresos.idTipoIngEg=tipoingeg.id)
    inner join grupoingeg on (grupoingeg.id=ingresosegresos.idGrupoIngEg)
    



    