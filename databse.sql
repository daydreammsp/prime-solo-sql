
CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

SELECT * FROM "accounts" 
WHERE "city" = 'chicago';

SELECT * FROM "accounts" 
WHERE "username" = '%a%';

SELECT * FROM "accounts" 
WHERE "username" LIKE '%a%';


SELECT * FROM "accounts"
WHERE ("transactions_attempted" = '0' AND "account_balance" = '0');


SELECT * FROM "accounts"
WHERE ("transactions_completed" >'9');

SELECT * FROM "accounts" 
ORDER BY "account_balance" DESC LIMIT 3;

SELECT * FROM "accounts" 
WHERE "account_balance" > '100';

INSERT INTO "accounts" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance") 
VALUES ( 'Bill', 'Minneapolis', '45', '500', '30000');

DELETE FROM "accounts" WHERE "city" ILIKE 'miami';

DELETE FROM "accounts" WHERE "city" ILIKE 'phoenix';
