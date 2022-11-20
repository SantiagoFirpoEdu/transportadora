--Listar o nome dos clientes, o número, a data de saída, a placa do caminhão
-- e o nome do motorista de suas entregas, bem como a descrição e o nome das
-- categorias dos itens entregues, apenas para as entregas efetuadas no corrente ano,
-- para clientes do Rio Grande do Sul e que tenham valor do prêmio de apólice de seguro
-- pelo menos R$ 100.000,00.
SELECT
    clientes.nome,
    entregas.id_entrega,
    entregas.data_saida,
    entregas.placa,
    motoristas.nome,
    categorias_item.descricao

FROM
    entregas
    INNER JOIN clientes ON clientes.id_cliente = entregas.id_cliente
    INNER JOIN apolices ON apolices.id_cliente = clientes.id_cliente
    INNER JOIN enderecos ON enderecos.id_cliente = clientes.id_cliente
    INNER JOIN caminhoes ON entregas.placa = caminhoes.placa
    INNER JOIN conducoes ON entregas.id_entrega = conducoes.id_entrega
    INNER JOIN motoristas ON conducoes.cnh = motoristas.cnh
    INNER JOIN remessas ON entregas.id_entrega = remessas.id_entrega
    INNER JOIN itens ON remessas.id_item = itens.id_item
    INNER JOIN categorizacoes ON itens.id_item = categorizacoes.id_item
    INNER JOIN categorias_item ON categorizacoes.id_categoria = categorias_item.id_categoria

WHERE
    EXTRACT(YEAR FROM data_chegada) = EXTRACT(YEAR FROM sysdate)
    AND enderecos.unidade_federativa = 'RS'
    AND apolices.valor_premio >= 100000;
