-- SELECIONANDO COLUNAS "compra_fornecedor_produto_estoque"
select * from compra_fornecedor_produto_estoque;

-- SELECIONANDO COLUNAS "avaliacao_orcamento_servico"
select cfpe.id_compra_fornecedor_produto_estoque, cfpe.data_pedido_compra, cfpe.quatidade_produto_compra, cfpe.valor_unitario_compra, comprador.nome_comprador, fornecedor.razao_social_fornecedor, produto.nome_produto   -- O QUE MOSTRAR
from compra_fornecedor_produto_estoque as cfpe -- DE QUE TABELA
join fornecedor -- UNIR TABELA
on cfpe.id_fornecedor_fk = fornecedor.id_fornecedor -- CHAVES
join comprador -- UNIR TABELA
on cfpe.id_comprador_fk = comprador.id_comprador  -- CHAVES
join produto_estoque -- UNIR TABELA
on cfpe.id_produto_estoque_fk = produto_estoque.id_produto_estoque  -- CHAVES
join produto -- UNIR TABELA
on produto_estoque.id_produto_fk = produto.id_produto  -- CHAVES
order by cfpe.id_compra_fornecedor_produto_estoque; -- ORDENAR PELA COLUNA

-- SELECIONANDO COLUNAS "estoque"
select * from estoque
order by id_estoque;

-- SELECIONANDO COLUNAS "produto_estoque"
select * from produto_estoque;

-- SELECIONANDO COLUNAS "cliente"
select id_produto_estoque, count(id_produto_estoque) 
from produto_estoque;

-- SELECIONANDO COLUNAS "produto_estoque"
select produto_estoque.id_produto_estoque, produto_estoque.quantidade_produto_estoque, produto.nome_produto
from produto_estoque
join produto
on produto_estoque.id_produto_fk = produto.id_produto
where id_estoque_fk != 'null'
group by id_produto_estoque;

-- SELECIONANDO COLUNAS "produto_estoque"
select id_estoque_fk, count(id_estoque_fk) 
from produto_estoque;

-- SELECIONANDO COLUNAS "produto_estoque"
select produto_estoque.id_produto_estoque, produto_estoque.quantidade_produto_estoque, produto.nome_produto
from produto_estoque
join produto
on produto_estoque.id_produto_fk = produto.id_produto
where id_parceiro_venda_fk != 'null'
group by id_produto_estoque;

-- SELECIONANDO COLUNAS "produto_estoque"
select id_parceiro_venda_fk, count(id_parceiro_venda_fk) 
from produto_estoque;

-- SELECIONANDO COLUNAS "produto_estoque"
select produto_estoque.id_produto_estoque, produto_estoque.quantidade_produto_estoque, produto_estoque.valor_unitário_produto, produto.nome_produto
from produto_estoque
join produto
on produto_estoque.id_produto_fk = produto.id_produto
where valor_unitário_produto > 1000 and valor_unitário_produto < 2000;

-- SELECIONANDO COLUNAS "pedido"
select * from pedido;

-- SELECIONANDO COLUNAS "pedido"
select pedido.id_pedido, pedido.quatidade_pedido, pedido.valor_total_pedido, produto.nome_produto, cliente_pf.nome_cliente_pf, cliente_pf.cpf
from pedido
join produto_estoque
on pedido.id_produto_estoque_fk = produto_estoque.id_produto_estoque
join produto
on produto_estoque.id_produto_fk = produto.id_produto
join cliente_pf
on pedido.id_cliente_pf_fk = cliente_pf.id_cliente_pf
order by pedido.id_pedido;

-- SELECIONANDO COLUNAS "pedido"
select pedido.id_pedido, pedido.quatidade_pedido, pedido.valor_total_pedido, produto.nome_produto, cliente_pj.razao_social_cliente_pj, cliente_pj.cnpj
from pedido
join produto_estoque
on pedido.id_produto_estoque_fk = produto_estoque.id_produto_estoque
join produto
on produto_estoque.id_produto_fk = produto.id_produto
join cliente_pj
on pedido.id_cliente_pj_fk = cliente_pj.id_cliente_pj
order by pedido.id_pedido;

-- SELECIONANDO COLUNAS "liberacao_entrega_pagamento"
select * from liberacao_entrega_pagamento;

select liberacao.id_liberacao_entrega_pagamento, liberacao.liberacao_entrega_mediante_pagamento, tp.confirmacao_pagamento, ppe.numero_nota_fiscal, pedido.id_pedido, entrega.codigo_rastreamento, tp.id_pix_fk, tp.id_boleto_fk, tp.id_cartao_credito_fk
from liberacao_entrega_pagamento as liberacao
join entrega
on liberacao.id_entrega_fk = entrega.id_entrega
join pedido_pagamento_entrega as ppe
on liberacao.id_pedido_pagamento_entrega_fk = ppe.id_pedido_pagamento_entrega
join tipo_pagamento as tp
on ppe.id_tipo_pagamento_fk = tp.id_tipo_pagamento
join pedido
on ppe.id_pedido_fk = pedido.id_pedido
order by liberacao.id_liberacao_entrega_pagamento;


