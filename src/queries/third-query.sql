--Listar o nome de todos os clientes pessoa jurídica, acompanhados da
-- quantidade de entregas solicitadas e do valor total de suas apólices de seguro, apenas para
-- clientes do Rio Grande do Sul que tenham solicitado pelo menos 5 entregas.
SELECT
    CC105613.clientes.nome,
    COUNT(entrega.id_entrega) AS quantidade_entregas,
    SUM(apolice.valor_premio) AS valor_total_apolices

FROM
    CC105613.clientes
    INNER JOIN CC105613.pessoas_juridicas pessoa_juridica ON clientes.id_cliente = pessoa_juridica.id_cliente
    LEFT JOIN CC105613.enderecos endereco ON clientes.id_cliente = endereco.id_cliente
    LEFT JOIN CC105613.entregas entrega ON entrega.id_cliente = clientes.id_cliente
    LEFT JOIN CC105613.apolices apolice ON apolice.id_cliente = clientes.id_cliente

WHERE endereco.unidade_federativa = 'RS'
GROUP BY clientes.nome
HAVING COUNT(entrega.id_entrega) >= 5
ORDER BY clientes.nome;