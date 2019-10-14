/*4. Roles and privileges:*/
/* i. Explain what's the purpose of the PUBLIC role, which privileges has it and which users have this role?
      EL Public rol es un rol especial que cada cuenta de usuario de la base de datos tiene automaticamente, lo usuario con rol
      publico tienen privilegios para hacer SELECT y EXECUTE en varias tablas, vistas y funciones del sistema.

/*ii. Explain the difference between these views: DBA_SYS_PRIVS, DBA_TAB_PRIVS and DBA_ROLE_PRIVS
      - DBA_SYS_PRIVS: Describe los privilegios del sistema otorgados al usuario actual.
      - DBA_TAB_PRIVS: Describe los objetos para los cuales el usuario se encuentra como propietario.
      - DBA_ROLE_PRIVS: Describe los roles otorgados al usuario actual. */
      
/*iii. When we talk about privileges in Oracle, we find three main categories of privileges, which are: SYSTEM priveleges, 
       OBJECT privileges and Privilege hierarchy, define what is the purpose of each category and provide some examples of 
       privileges which belong to each one of them.
       - SYSTEM PRIVELEGES: Un privilegio del sistema es el derecho a realizar una acción particular, o realizar una acción en 
       cualquier objeto de esquema de un tipo particular. Por ejemplo, los privilegios para crear espacios de tablas y eliminar 
       las filas de cualquier tabla en una base de datos son privilegios del sistema.
       - OBJECT PRIVILEGES:  es un privilegio o derecho para realizar una acción particular en una tabla, vista, secuencia, 
       procedimiento, función o paquete específico . Hay diferentes privilegios de objeto disponibles para diferentes tipos de
       objetos de esquema. Por ejemplo, el privilegio de eliminar filas de la tabla DEPT es un privilegio de objeto.
       - PRIVILEGE HIERARCHY: Son algunos privilegios que confieren otros privilegios. Por ejemplo,ADMIN privilege confiere 
       todos los demas privilegios o THE CREATE ANY TABLE system privilege confiere el privilegio de crear una tabla.       
       */

/*iv. Create the following roles with the privileges required as follows:*/