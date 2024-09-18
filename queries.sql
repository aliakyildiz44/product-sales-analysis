--1. Ürün Başına Yıllık Toplam Satış Miktarı ve Toplam Satış Sayısı

SELECT 
    P.ProductName,                            
    YEAR(S.SaleDate) AS SaleYear,             
    SUM(S.Quantity * P.Price) AS TotalSalesAmount,
    COUNT(S.SaleID) AS NumberOfSales         
FROM 
    Sales S                                  
JOIN 
    Products P ON S.ProductID = P.ProductID 
GROUP BY 
    P.ProductName,                            
    YEAR(S.SaleDate)                         
ORDER BY 
    SaleYear, P.ProductName;                


--2. En Yüksek Toplam Satış Miktarına Sahip Ürünü Bulma

WITH TotalSalesPerProduct AS (                
    SELECT 
        P.ProductName,                      
        SUM(S.Quantity * P.Price) AS TotalSalesAmount 
    FROM 
        Sales S                               
    JOIN 
        Products P ON S.ProductID = P.ProductID  
    GROUP BY 
        P.ProductName                       
)
SELECT 
    ProductName, 
    TotalSalesAmount                        
FROM 
    TotalSalesPerProduct                   
ORDER BY 
    TotalSalesAmount DESC                    
LIMIT 1;                                    
