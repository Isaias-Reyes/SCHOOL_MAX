USE SCHOOL_MAX
GO
CREATE TRIGGER Correccion_tipo_documento
ON USUARIO
AFTER INSERT
AS
BEGIN

    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE Tipo_Documento NOT IN (
            'CC',
            'TI',
            'CE',
            'PEP',
            'PPT',
            'ETP'
        )
    )
    BEGIN
        RAISERROR(
            'Tipo de documento no válido. Solo se permiten: Cedula de Ciudadanía(CC), Tarjeta de Identidad(TI), Cedula de Extranjeria(CE), Permiso Especial de Permanencia(PEP) o Permiso por Proteccion Temporal(PPT).',
            16,
            1
        );

        ROLLBACK TRANSACTION;
        RETURN;
    END;

END;
GO

CREATE TRIGGER TR_EncriptarContrasena
ON USUARIO
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE u
    SET Contraseña = CONVERT(VARCHAR(500),
    ENCRYPTBYPASSPHRASE(
        'MiClaveSecreta123',
        i.Contraseña),
        2
        
    )
    FROM USUARIO u
    INNER JOIN inserted i
        ON u.ID_Usuario = i.ID_Usuario;
END;
