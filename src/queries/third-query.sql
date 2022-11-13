--Listar o nome de todos os clientes pessoa jurídica, acompanhados da quantidade de entregas solicitadas e do valor total de suas apólices de seguro, apenas para clientes do Rio Grande do Sul que tenham solicitado pelo menos 5 entregas.
SELECT
    clientes.nome,
    COUNT(entregas.id_entrega) AS quantidade_entregas,
    SUM(apolices.valor_premio) AS valor_total_apolices

FROM
(
    clientes
    INNER JOIN pessoas_fisicas ON clientes.id_cliente = pessoas_fisicas.id_cliente
    LEFT JOIN enderecos ON clientes.id_cliente = enderecos.id_cliente
    LEFT JOIN entregas ON entregas.id_cliente = clientes.id_cliente
    LEFT JOIN apolices ON apolices.id_cliente = clientes.id_cliente
)

WHERE enderecos.unidade_federativa = 'RS'
GROUP BY clientes.nome
HAVING COUNT(entregas.id_entrega) >= 5
ORDER BY clientes.nome;