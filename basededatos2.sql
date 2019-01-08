-- Esto es un comentario
# Creando nueva base de datos
create schema if not exists ejemplo2;

#Usando la nueva base de datos:
use ejemplo2; 

#Creando la tabla Personas
create table if not exists Personas(
	id int not null auto_increment,
    nombre varchar(60) not null,
    correo varchar(30) null,
    telefono varchar(30) null,
    primary key (id)
) engine=InnoDB;

#Creando tabla estatus Pendiente
create table if not exists EstatusPendiente(
	id int not null auto_increment,
    estatus varchar(20) not null,
    primary key(id)
) engine=InnoDB;

#Creando tabla Usuarios
create table if not exists Usuarios(
	id int not null auto_increment,
    nombre varchar(30),
    password varchar(45),
    idPersona int,
    primary key(id),
    
    constraint fkUsuarioPersona
		foreign key(idPersona)
        references Personas(id)
)engine=InnoDB;

#Creando tabla Pendientes
create table if not exists Pendientes(
	id int not null auto_increment,
    fechaCreacion datetime not null,
    fechaEntrega datetime not null,
    descripcion varchar(250),
    idEstatusPendiente int,
    observaciones varchar(250),
    idPersonaQueAsigno int,
    idPersonaAsignado int,
    solucionpendiente varchar(250),
    primary key(id),
    
    constraint FKEstatusPendiente
		foreign key(idEstatusPendiente)
        references EstatusPendiente(id),
        
	 constraint FKPersonaQueAsigno
		foreign key(idPersonaQueAsigno)
        references Personas(id),
	
     constraint FKPersonaAsignado
		foreign key(idPersonaAsignado)
        references Personas(id)
        
)engine=InnoDB;


#Creando tabla TipoIngreso-Egreso
create table if not exists TipoIngEg(
	id int not null auto_increment,
    descripcion varchar(20),
	primary key(id)
)engine=InnoDB;

#Creando Tabla Grupo Ingresos Egresos
create table if not exists GrupoIngEg(
	id int not null auto_increment,
    descripcion varchar(20),
    observaciones varchar(50),
    primary key(id)
)engine=InnoDB;

#Creando Tabla Ingresos Egresos
create table if not exists IngresosEgresos(
	id int not null auto_increment,
    descripcion varchar(30),
    idTipoIngEg int,
    idGrupoIngEg int,
    observaciones varchar(50),
    primary key(id),
    
    constraint FKTipoIngEg
		foreign key(idTipoIngEg)
        references TipoIngEg(id),
	
	constraint FKGrupoIngEg
		foreign key(idGrupoIngEg)
        references GrupoIngEg(id)
        
)engine=InnoDB;

#Creando Tabla EntradaSalida de dinero
create table if not exists EntradaSalidaDinero(
	id int not null auto_increment,
    fechaES date,
    idTipoIngEg int,
    montoIE decimal(6,0),
    idPersonasQueRegistro int,
    observaciones varchar(250),
	primary key(id),
    
    constraint FKIngresoEgreso
		foreign key(idTipoIngEg)
        references IngresosEgresos(id),
    
    constraint FKPersonasQueRegistro
		foreign key(idPersonasQueRegistro)
        references Personas(id)

)engine=InnoDB;
