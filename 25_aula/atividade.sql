DELIMITER $$

CREATE PROCEDURE listarArtistasSertanejo()
BEGIN
    SELECT nome 
    FROM artista 
    WHERE genero = 'Sertanejo';
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE apresentacoesPorGenero(IN genero_musical VARCHAR(50))
BEGIN
    SELECT a.nome AS artista, p.nome AS palco
    FROM apresentacao ap
    JOIN artista a ON ap.id_artista = a.id
    JOIN palco p ON ap.id_palco = p.id
    WHERE a.genero = genero_musical;
END $$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE adicionarNovoPalco(
    IN nome_palco VARCHAR(100),
    IN capacidade_palco INT
)
BEGIN
    INSERT INTO palco (nome, capacidade)
    VALUES (nome_palco, capacidade_palco);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE totalApresentacoesPorDia(
    IN data_especifica DATE,
    OUT total INT
)
BEGIN
    SELECT COUNT(*) 
    INTO total
    FROM apresentacao
    WHERE DATE(horario_inicio) = data_especifica;
END $$

DELIMITER ;


