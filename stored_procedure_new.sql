DELIMITER $$ 
CREATE PROCEDURE order_details(in first_OrderID int(11), in last_OrderID int(11))
BEGIN
SELECT 
    OrderID,
    ProductID,
    UnitPrice,
    Quantity
FROM
    `order details`
WHERE OrderID BETWEEN first_OrderID AND last_OrderID 
ORDER BY OrderID;
END $$
DELIMITER ;