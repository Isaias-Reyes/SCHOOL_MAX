use SCHOOL_MAX

GO

CREATE VIEW Activos
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

CREATE VIEW Retirados
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

CREATE VIEW Suspendidos
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

CREATE VIEW Trasladados
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

CREATE VIEW Finalizados
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

CREATE VIEW Promovidos
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

CREATE VIEW Inactivos
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
WHERE ES.Nombre = 'INACTIVOS';

GO

SELECT * FROM [Activos];
SELECT * FROM [Finalizados];
SELECT * FROM [Promovidos];
SELECT * FROM [Retirados];
SELECT * FROM [Suspendidos];
SELECT * FROM [Trasladados];
SELECT * FROM [Inactivos];

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


SELECT * FROM USUARIO
