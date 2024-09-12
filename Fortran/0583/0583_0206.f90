SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
         INTEGER,ALLOCATABLE::ALC2
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        TYPE(TY),ALLOCATABLE :: OBJ2
        INTEGER,ALLOCATABLE::K1
        INTEGER,ALLOCATABLE::K2
        ALLOCATE(K1)
        ALLOCATE(OBJ2)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        K1 =41
        CALL SUB(TY1(6,K1,OBJ2))
        ALLOCATE(K2)
        K2 =98
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%JJ
        IF(K1.NE.41)PRINT*,"103"
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY1) :: AAA
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        deallocate(AAA%NODE2)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
