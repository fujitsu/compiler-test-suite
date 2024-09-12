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
        TYPE(TY1) :: OBJNEW4
        integer,allocatable::t1
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        OBJNEW4 = TY1(6,OBJ2)
        IF(OBJNEW4%NODE2%ALC .NE. 5) PRINT*,"122"
        OBJNEW4%NODE2%ALC = 20
        IF(OBJNEW4%NODE2%ALC .NE.20) PRINT*,"123"
        CALL SUB(TY1(6,OBJ2))
        allocate(t1)
        t1 = 30
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(OBJ)
        TYPE(TY1) :: OBJ
        IF(OBJ%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(OBJ%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(OBJ%II .NE. 6) PRINT*,"123"
        deallocate(OBJ%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
