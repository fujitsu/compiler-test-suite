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
        INTEGER,ALLOCATABLE::alc1
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        CALL SUB(TY1(6,OBJ2))
        allocate(alc1)
        alc1 =95
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%JJ
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY1) :: AAA
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        deallocate(AAA%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
