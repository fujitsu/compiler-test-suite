CLASS(*),POINTER :: OBJ(:)
COMPLEX(2),TARGET :: C2(4)
C2=(4,5)
OBJ=>C2
SELECT TYPE(OBJ)
TYPE IS(COMPLEX(2))
IF(ANY(OBJ .NE. (4,5)))PRINT*,"101"
IF(KIND(OBJ) .NE. 2)PRINT*,"102"
TYPE IS(COMPLEX(4))
PRINT*,"103"
CLASS DEFAULT
PRINT*,"104"
END SELECT
PRINT*,"PASS"
END
