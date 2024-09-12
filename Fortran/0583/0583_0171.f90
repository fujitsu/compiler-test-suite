SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC
         END TYPE
        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        TYPE(TY), ALLOCATABLE :: TNODE
        END TYPE
        TYPE(TY),ALLOCATABLE :: OBJ2
        TYPE(TY),ALLOCATABLE :: OBJ3
        integer,allocatable::alc1
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 6
        ALLOCATE(OBJ3)
        ALLOCATE(OBJ3%ALC)
        OBJ3%JJ = 3
        OBJ3%ALC = 5
        CALL SUB(TY1(6,OBJ2,OBJ3))
        allocate(alc1)
        alc1 =90
        IF(OBJ2%ALC.NE.6)PRINT*,"101", OBJ2%ALC
        IF(OBJ3%ALC.NE.5)PRINT*,"102", OBJ3%ALC
        IF(OBJ3%JJ.NE.3)PRINT*,"104", OBJ3%JJ
        IF(OBJ2%JJ.NE.4)PRINT*,"105", OBJ2%JJ
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(OBJ)
        TYPE(TY1) :: OBJ
        IF(OBJ%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(OBJ%NODE2%ALC .NE.6) PRINT*,"122"
        IF(OBJ%II .NE. 6) PRINT*,"123"
        deallocate(OBJ%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END

