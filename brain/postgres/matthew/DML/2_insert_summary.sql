INSERT INTO project_two.matthew_summary (stock_symbol, avg_close_price, total_volume, trading_days)
SELECT 
    stock_symbol,
    ROUND(AVG(close_price), 2) AS avg_close_price,
    SUM(volume) AS total_volume,
    COUNT(*) AS trading_days
FROM project_two.matthew
GROUP BY stock_symbol
ORDER BY stock_symbol;
