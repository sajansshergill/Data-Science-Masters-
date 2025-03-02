DELIMITER $$

CREATE FUNCTION PersonName(FirstName VARCHAR(50), LastName VARCHAR(50), Age INT)
RETURNS VARCHAR(200) DETERMINISTIC
BEGIN
    DECLARE FullName VARCHAR(100);
    DECLARE Message VARCHAR(200);

    SET FullName = CONCAT(FirstName, ' ', LastName);

    IF Age > 25 THEN
        SET Message = CONCAT(FullName, '. You are an adult person');
    ELSE
        SET Message = CONCAT(FullName, '. You are a young person');
    END IF;

    RETURN Message;
END $$

DELIMITER ;

SELECT PersonName('Sajan', 'Singh', 25);
SELECT PersonName('Rahul', 'Dua', 30);
