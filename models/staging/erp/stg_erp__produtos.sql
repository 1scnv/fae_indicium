with
    fonte_produtos as (
        select
            cast(ID as int) as pk_produto
            , cast(SUPPLIERID as int) as fk_fornecedor
            , cast(CATEGORYID as int) as fk_categoria
            , cast(PRODUCTNAME as string) as nm_produto
            , cast(QUANTITYPERUNIT as string) as quantidade_por_unidade
            , cast(UNITPRICE as string) as preco_por_unidade
            , cast(UNITSINSTOCK as int) as unidade_em_estoque
            , cast(UNITSONORDER as int) as unidade_por_pedido
            , cast(REORDERLEVEL as int) as nivel_de_pedido
            , DISCONTINUED as eh_descontinuado
        from {{ source('erp', 'products') }}
    )

select *
from fonte_produtos