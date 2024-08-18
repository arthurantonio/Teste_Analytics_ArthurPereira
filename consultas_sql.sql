SELECT 
  Produto, 
  Categoria, 
  SUM(Quantidade * Preco) AS VendasTotais -- Calcula o valor arrecadado anual, agrapando depois por produto e categoria
FROM 
  vendas
GROUP BY -- aqui consegue agrupar
  Produto, 
  Categoria
ORDER BY
    VendasTotais DESC; -- utilizo a "variavel" que criei no select para ordenar de forma decrescente

SELECT 
  Produto, 
  SUM(Quantidade * Preco) AS Total_Vendas -- mesma coisa da ultima consulta, mas so agrupa por produto e retruito ao mês de junho (6)
FROM 
  vendas
WHERE 
  STRFTIME('%m', Data) = '06' -- restringe o mes de junho
GROUP BY 
  Produto -- agrupa so em produto (camiseta, calça, etc)
ORDER BY
    Total_Vendas ASC; -- mostra de forma decrescente, pra mostrar o menores antes