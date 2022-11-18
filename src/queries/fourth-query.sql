SELECT
    entregas.id_entrega,
    inspecao.data,
    protocolo_seguranca.descricao,
    cliente.nome,
    endereco.bairro,
    endereco.rua,
    licitacao.indice_licitacao,
    licitacao.orgao_fiscalizador,
    licitacao.data_licitacao
FROM
    entregas
    INNER JOIN remessas remessa ON entregas.id_entrega = remessa.id_entrega
    INNER JOIN itens item ON remessa.id_item = item.id_item
    INNER JOIN categorizacoes categorizacao ON item.id_item = categorizacao.id_item
    INNER JOIN protocolos_seguranca protocolo_seguranca ON item.descricao = protocolo_seguranca.descricao
    INNER JOIN inspecoes inspecao ON item.id_item = inspecao.id_item
    INNER JOIN clientes cliente ON entregas.id_cliente = cliente.id_cliente
    INNER JOIN enderecos endereco ON cliente.id_cliente = endereco.id_cliente
    INNER JOIN licitacoes licitacao ON item.id_item = licitacao.id_item
WHERE
(
    endereco.cidade = 'Porto Alegre'
)