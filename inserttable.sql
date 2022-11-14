INSERT INTO customers
  ( customer_id,customer_name )
VALUES
  ('1', 'Moriarty'), 
  ('2', 'Rose'),
  ('3', 'Enola'), 
  ('4', 'Eddith'),
  ('5', 'Bella'), 
  ('6', 'Jim'),
  ('7', 'James'), 
  ('8', 'Fallon'),
  ('9', 'Taylor'), 
  ('10', 'Lunter');

INSERT INTO casiers
  ( casiers_id,casiers_name )
VALUES
  ('1', 'mozart'), 
  ('2', 'sherlock'),
  ('3', 'watson'), 
  ('4', 'cristie'),
  ('5', 'microft'), 
  ('6', 'holmes'),
  ('7', 'will'), 
  ('8', 'lucas'),
  ('9', 'nancy'), 
  ('10', 'joyce');
   

INSERT INTO products
  ( products_id,products_name,price )
VALUES
  ('1', 'milkita','5000'), 
  ('2', 'susubendera','6000'),
  ('3', 'ultramilk','7000'), 
  ('4', 'dancow','11000'),
  ('5', 'kanzler','8000'), 
  ('6', 'sonice','2000'),
  ('7', 'chitato','11000'), 
  ('8', 'lays','13000'),
  ('9', 'qtela','15000'), 
  ('10', 'potabee','13000'),
  ('11', 'oreo','8000');

INSERT INTO categories
  ( categories_id, name )
VALUES
  ('1', 'susu'), 
  ('2', 'sosis'),
  ('3', 'makanan ringan');

INSERT INTO products_cat
  ( products_cat_id,products_id,categories_id )
VALUES
  ('1', '1','1'), 
  ('2', '2','1'),
  ('3', '3','1'), 
  ('4', '4','1'),
  ('5', '5','2'), 
  ('6', '6','2'),
  ('7', '7','3'), 
  ('8', '8','3'),
  ('9', '9','3'), 
  ('10', '10','3'),
  ('11', '11','3');

INSERT INTO orders
  ( order_id, customer_id, casiers_id, price_total, order_date )
VALUES
  ('1', '1', '1', '43000','2022-11-1 23:59:59'),
  ('2', '9', '5', '43000','2022-11-2 23:59:59'),
  ('3', '4', '1', '21000','2022-11-3 23:59:59'),
  ('4', '3', '7', '14000','2022-11-5 23:59:59'),
  ('5', '5', '1', '10000','2022-10-1 23:59:59'),
  ('6', '7', '9', '12000','2022-8-1 23:59:59'),
  ('7', '2', '3', '13000','2022-9-1 23:59:59');
  
  INSERT INTO orders_item
  ( order_item_id,order_id,products_id,categories_id, quantity, price )
VALUES
  ('1', '1', '1', '1','2','10000'),
  ('2', '1', '4', '1','1','11000'),
  ('3', '1', '7', '3','2','22000'),
  ('5', '2', '1', '1','2','10000'),
  ('6', '2', '4', '1','1','11000'),
  ('7', '2', '7', '3','2','22000'),
  ('8', '3', '1', '1','2','10000'),
  ('9', '3', '4', '1','1','11000');