--Listar o nome dos clientes, as cidades e a UF de seus endereços, o número,
-- a data de saída e de chegada de suas entregas, apenas para os clientes pessoa física,
-- ordenando o resultado em ordem crescente de nome de cliente e descrescente de data de saída
-- das entregas.

SELECT
    cliente.nome,
    endereco.cidade,
    endereco.unidade_federativa,
    endereco.numero,
    entrega.data_saida,
    entrega.data_chegada

FROM
    CC105613.pessoas_fisicas
    INNER JOIN CC105613.clientes cliente ON cliente.id_cliente = CC105613.pessoas_fisicas.id_cliente
    INNER JOIN CC105613.enderecos endereco ON endereco.id_cliente = cliente.id_cliente
    INNER JOIN CC105613.entregas entrega ON entrega.id_cliente = cliente.id_cliente

ORDER BY cliente.nome, entrega.data_saida DESC;
