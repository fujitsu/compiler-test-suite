SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        TYPE(TY),ALLOCATABLE :: OBJ2

        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        CALL SUB([TY1(6,OBJ2), TY1(7,OBJ2), TY1(8,OBJ2)])
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%ALC
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(OBJ)
        TYPE(TY1),INTENT(IN) :: OBJ(3)
        IF(OBJ(1)%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(OBJ(1)%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(OBJ(1)%II .NE. 6) PRINT*,"123"
        IF(OBJ(2)%NODE2%JJ .NE. 4) PRINT*,"124"
        IF(OBJ(2)%NODE2%ALC .NE. 5) PRINT*,"125",OBJ(2)%NODE2%ALC
        IF(OBJ(2)%II .NE. 7) PRINT*,"126"
        IF(OBJ(3)%NODE2%JJ .NE. 4) PRINT*,"127"
        IF(OBJ(3)%NODE2%ALC .NE. 5) PRINT*,"128",OBJ(3)%NODE2%ALC
        IF(OBJ(3)%II .NE. 8) PRINT*,"129"
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END