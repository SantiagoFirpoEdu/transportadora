SELECT
    CC105613.entregas.id_entrega,
    inspecao.data,
    protocolo_seguranca.descricao,
    cliente.nome,
    endereco.bairro,
    endereco.rua,
    licitacao.indice_licitacao,
    licitacao.orgao_fiscalizador,
    licitacao.data_licitacao
FROM
    CC105613.entregas
    INNER JOIN CC105613.remessas remessa ON entregas.id_entrega = remessa.id_entrega
    INNER JOIN CC105613.itens item ON remessa.id_item = item.id_item
    INNER JOIN CC105613.categorizacoes categorizacao ON item.id_item = categorizacao.id_item
    INNER JOIN CC105613.protocolos_seguranca protocolo_seguranca ON item.descricao = protocolo_seguranca.descricao
    INNER JOIN CC105613.inspecoes inspecao ON item.id_item = inspecao.id_item
    INNER JOIN CC105613.clientes cliente ON entregas.id_cliente = cliente.id_cliente
    INNER JOIN CC105613.enderecos endereco ON cliente.id_cliente = endereco.id_cliente
    INNER JOIN CC105613.licitacoes licitacao ON item.id_item = licitacao.id_item
WHERE
    endereco.cidade = 'Porto Alegre';