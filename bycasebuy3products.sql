INSERT INTO orders
  ( order_id, customer_id, casiers_id, price_total, order_date )
VALUES
  ('1', '1', '1', '43000','2022-11-1 23:59:59');
  
  INSERT INTO orders_item
  ( order_item_id,order_id,products_id,categories_id, quantity, price )
VALUES
  ('1', '1', '1', '1','2','10000'),
  ('2', '1', '4', '1','1','11000'),
  ('3', '1', '7', '3','2','22000');