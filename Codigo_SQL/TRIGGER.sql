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
