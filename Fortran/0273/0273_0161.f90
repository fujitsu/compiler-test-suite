REAL(2) :: RR
ASSOCIATE(XX=>FUN())
RR = XX(2)
END ASSOCIATE
IF (RR .NE. 2) PRINT*,101
IF(KIND(RR) .NE. 2)PRINT*,"102"
PRINT*,"PASS"
CONTAINS
FUNCTION FUN()
REAL(2) :: FUN(3) 
FUN = 2
END FUNCTION
END
