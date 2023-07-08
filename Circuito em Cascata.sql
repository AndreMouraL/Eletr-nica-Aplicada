-- Criação da tabela para armazenar os amplificadores
CREATE TABLE Amplificadores (
  id INT PRIMARY KEY,
  ganho FLOAT
);

-- Inserção dos dados dos amplificadores
INSERT INTO Amplificadores (id, ganho) VALUES
(1, 2.0), -- Ganho do amplificador 1
(2, 1.5), -- Ganho do amplificador 2
(3, 3.2); -- Ganho do amplificador 3

-- Cálculo do ganho total do circuito
SELECT POWER(ganho, 3) as ganho_total FROM Amplificadores;
