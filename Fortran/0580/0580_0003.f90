Module m         
TYPE TY
 INTEGER :: JJ
 INTEGER,ALLOCATABLE :: ALC
END TYPE
TYPE TY1
 INTEGER :: II
 TYPE(TY), ALLOCATABLE :: NODE2
 END TYPE

TYPE(TY1) :: OBJ
CONTAINS
SUBROUTINE SUB(OBJ)
TYPE(TY1),INTENT(IN) :: OBJ
if(OBJ%II .NE. 6)PRINT*,"101"
 END SUBROUTINE
END module

subroutine s()
use m
CALL SUB(TY1(6, TY(1,5)))
PRINT*,"PASS"
end subroutine

call s()
END