--Listar o nome dos clientes, as cidades e a UF de seus endereços, o número, a data de saída e de chegada de suas entregas, apenas para os clientes pessoa física, ordenando o resultado em ordem crescente de nome de cliente e descrescente de data de saída das entregas.

SELECT (cliente.nome, endereco.cidade, endereco.unidade_federativa, endereco.numero, entrega.data_saida, entrega.data_chegada) from pessoas_fisicas
    LEFT JOIN clientes cliente ON cliente.id_cliente = pessoas_fisicas.id_cliente
    LEFT JOIN enderecos endereco ON endereco.id_cliente = cliente.id_cliente
    LEFT JOIN entregas entrega ON entrega.id_cliente = cliente.id_cliente
    WHERE cliente.id_cliente = pessoas_fisicas.id_cliente
    ORDER BY cliente.nome, entrega.data_saida DESC;
