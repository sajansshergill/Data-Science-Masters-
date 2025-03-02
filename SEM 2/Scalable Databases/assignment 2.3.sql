DELIMITER $$

CREATE FUNCTION varianceA(A INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE SumX FLOAT DEFAULT 0;
    DECLARE SumSquaredDiff FLOAT DEFAULT 0;
    DECLARE Mean FLOAT;
    DECLARE Counter INT DEFAULT 1;

    -- Calculate the Mean
    WHILE Counter <= A DO
        SET SumX = SumX + Counter;
        SET Counter = Counter + 1;
    END WHILE;

    SET Mean = SumX / A;

    -- Reset Counter and Calculate Variance
    SET Counter = 1;
    SET SumX = 0;

    WHILE Counter <= A DO
        SET SumSquaredDiff = SumSquaredDiff + POW(Counter - Mean, 2);
        SET Counter = Counter + 1;
    END WHILE;

    RETURN SumSquaredDiff / A;
END $$

DELIMITER ;



SELECT varianceA(5);
