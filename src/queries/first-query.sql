--Listar o nome dos clientes, as cidades e a UF de seus endereços, o número,
-- a data de saída e de chegada de suas entregas, apenas para os clientes pessoa física,
-- ordenando o resultado em ordem crescente de nome de cliente e descrescente de data de saída
-- das entregas.

SELECT CLIENTE.NOME,
       ENDERECO.CIDADE,
       ENDERECO.UNIDADE_FEDERATIVA,
       ENDERECO.NUMERO,
       ENTREGA.DATA_SAIDA,
       ENTREGA.DATA_CHEGADA

FROM CC105613.PESSOAS_FISICAS
         INNER JOIN CC105613.CLIENTES CLIENTE ON CLIENTE.ID_CLIENTE = CC105613.PESSOAS_FISICAS.ID_CLIENTE
         INNER JOIN CC105613.ENDERECOS ENDERECO ON ENDERECO.ID_CLIENTE = CLIENTE.ID_CLIENTE
         INNER JOIN CC105613.ENTREGAS ENTREGA ON ENTREGA.ID_CLIENTE = CLIENTE.ID_CLIENTE

ORDER BY CLIENTE.NOME, ENTREGA.DATA_SAIDA DESC;
