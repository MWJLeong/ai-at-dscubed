CREATE SCHEMA IF NOT EXISTS project_two;

CREATE TABLE IF NOT EXISTS project_two.matthew (
    id SERIAL PRIMARY KEY,
    stock_symbol VARCHAR(10) NOT NULL,
    date DATE NOT NULL,
    open_price DECIMAL(10, 2),
    high_price DECIMAL(10, 2),
    low_price DECIMAL(10, 2),
    close_price DECIMAL(10, 2),
    volume BIGINT,
    UNIQUE(stock_symbol, date)
);
