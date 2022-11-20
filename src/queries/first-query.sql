--Listar o nome dos clientes, as cidades e a UF de seus endereços, o número,
-- a data de saída e de chegada de suas entregas, apenas para os clientes pessoa física,
-- ordenando o resultado em ordem crescente de nome de cliente e descrescente de data de saída
-- das entregas.

SELECT CLIENTE.NOME,
       ENDERECO.ID_CIDADE,
       ENDERECO.UNIDADE_FEDERATIVA,
       ENDERECO.NUMERO,
       ENTREGA.DATA_PARTIDA,
       ENTREGA.DATA_CHEGADA_PREVISTA

FROM CC105613.PESSOAS_FISICAS PESSOA_FISICA
         INNER JOIN CC105613.CLIENTES CLIENTE ON CLIENTE.ID_CLIENTE = PESSOA_FISICA.ID_CLIENTE
         INNER JOIN CC105613.ENDERECOS ENDERECO ON ENDERECO.ID_CLIENTE = CLIENTE.ID_CLIENTE
         INNER JOIN CC105613.ENTREGAS ENTREGA ON ENTREGA.ID_CLIENTE = CLIENTE.ID_CLIENTE
         INNER JOIN CIDADES CIDADE ON CIDADE.ID_CIDADE = ENDERECO.ID_CIDADE

ORDER BY CLIENTE.NOME, ENTREGA.DATA_PARTIDA DESC;
