-- Declaração da entidade do circuito
entity CircuitoCascata is
    port (
        entrada : in real; -- Tensão de entrada
        saida : out real -- Tensão de saída
    );
end entity CircuitoCascata;

-- Arquitetura do circuito
architecture Behavioral of CircuitoCascata is
    signal v1, v2, v3 : real; -- Tensões intermediárias
    constant ganho_amplificador1 : real := 2.0; -- Ganho do amplificador 1
    constant ganho_amplificador2 : real := 1.5; -- Ganho do amplificador 2
    constant ganho_amplificador3 : real := 3.2; -- Ganho do amplificador 3
begin
    v1 <= entrada * ganho_amplificador1; -- Tensão após o amplificador 1
    v2 <= v1 * ganho_amplificador2; -- Tensão após o amplificador 2
    v3 <= v2 * ganho_amplificador3; -- Tensão após o amplificador 3
    saida <= v3; -- Tensão de saída final
end architecture Behavioral;
