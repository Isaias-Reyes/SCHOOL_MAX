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


SELECT * FROM [Estudiantes_Activos];
SELECT * FROM [Estudiantes_Finalizados];
SELECT * FROM [Estudiantes_Promovidos];
SELECT * FROM [Estudiantes_Retirados];
SELECT * FROM [Estudiantes_Suspendidos];
SELECT * FROM [Estudiantes_Trasladados];

GO
CREATE VIEW Reporte_Academico
AS
SELECT
R.ID_Reporte,
    R.ID_Estudiante,
    TR.Nombre AS ID_Tipo_Reporte
FROM REPORTE R
INNER JOIN TIPO_REPORTE TR
    ON R.ID_Tipo_Reporte = TR.ID_Tipo_Reporte
    WHERE TR.Nombre = 'Academico';
GO


CREATE VIEW Reporte_Disciplinario
AS
SELECT
R.ID_Reporte,
    R.ID_Estudiante,
    TR.Nombre AS ID_Tipo_Reporte
FROM REPORTE R
INNER JOIN TIPO_REPORTE TR
    ON R.ID_Tipo_Reporte = TR.ID_Tipo_Reporte
    WHERE TR.Nombre = 'Disciplinario';
GO

CREATE VIEW Reporte_Convivencia
AS
SELECT
R.ID_Reporte,
    R.ID_Estudiante,
    TR.Nombre AS ID_Tipo_Reporte
FROM REPORTE R
INNER JOIN TIPO_REPORTE TR
    ON R.ID_Tipo_Reporte = TR.ID_Tipo_Reporte
    WHERE TR.Nombre = 'Convivencia';
GO

CREATE VIEW Reporte_Administrativo
AS
SELECT
R.ID_Reporte,
    R.ID_Estudiante,
    TR.Nombre AS ID_Tipo_Reporte
FROM REPORTE R
INNER JOIN TIPO_REPORTE TR
    ON R.ID_Tipo_Reporte = TR.ID_Tipo_Reporte
    WHERE TR.Nombre = 'Administrativo';
GO

CREATE VIEW Reporte_Boletín
AS
SELECT
R.ID_Reporte,
    R.ID_Estudiante,
    TR.Nombre AS ID_Tipo_Reporte
FROM REPORTE R
INNER JOIN TIPO_REPORTE TR
    ON R.ID_Tipo_Reporte = TR.ID_Tipo_Reporte
    WHERE TR.Nombre = 'Boletín';
GO

SELECT * FROM [Reporte_Academico]
SELECT * FROM [Reporte_Disciplinario]
SELECT * FROM [Reporte_Convivencia]
SELECT * FROM [Reporte_Administrativo]
SELECT * FROM [Reporte_Boletín]
