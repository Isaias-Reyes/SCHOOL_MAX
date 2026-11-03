use SCHOOL_MAX

GO
CREATE VIEW Estudiantes_Activos
AS
SELECT
    E.ID_Estudiante,
    E.Numero_Documento,
    E.Nombre AS Nombre_Estudiante,
    E.Apellidos,
    ES.Nombre AS Estado
FROM ESTUDIANTE E
INNER JOIN ESTADO ES
    ON E.ID_Estado = ES.ID_Estado
WHERE ES.Nombre = 'ACTIVO';
GO
CREATE VIEW Estudiantes_Retirados
AS
SELECT
    E.ID_Estudiante,
    E.Numero_Documento,
    E.Nombre AS Nombre_Estudiante,
    E.Apellidos,
    ES.Nombre AS Estado
FROM ESTUDIANTE E
INNER JOIN ESTADO ES
    ON E.ID_Estado = ES.ID_Estado
WHERE ES.Nombre = 'RETIRADO';
GO

CREATE VIEW Estudiantes_Suspendidos
AS
SELECT
    E.ID_Estudiante,
    E.Numero_Documento,
    E.Nombre AS Nombre_Estudiante,
    E.Apellidos,
    ES.Nombre AS Estado
FROM ESTUDIANTE E
INNER JOIN ESTADO ES
    ON E.ID_Estado = ES.ID_Estado
WHERE ES.Nombre = 'SUSPENDIDO';
GO

CREATE VIEW Estudiantes_Trasladados
AS
SELECT
E.ID_Estudiante,
    E.Numero_Documento,
    E.Nombre AS Nombre_Estudiante,
    E.Apellidos,
    ES.Nombre AS Estado
FROM ESTUDIANTE E
INNER JOIN ESTADO ES
    ON E.ID_Estado = ES.ID_Estado
WHERE ES.Nombre = 'TRASLADADO';
GO

CREATE VIEW Estudiantes_Finalizados
AS
SELECT
E.ID_Estudiante,
    E.Numero_Documento,
    E.Nombre AS Nombre_Estudiante,
    E.Apellidos,
    ES.Nombre AS Estado
FROM ESTUDIANTE E
INNER JOIN ESTADO ES
    ON E.ID_Estado = ES.ID_Estado
WHERE ES.Nombre = 'FINALIZADO';
GO

GO
CREATE VIEW Estudiantes_Promovidos
AS
SELECT
E.ID_Estudiante,
    E.Numero_Documento,
    E.Nombre AS Nombre_Estudiante,
    E.Apellidos,
    ES.Nombre AS Estado
FROM ESTUDIANTE E
INNER JOIN ESTADO ES
    ON E.ID_Estado = ES.ID_Estado
WHERE ES.Nombre = 'PROMOVIDO';
GO