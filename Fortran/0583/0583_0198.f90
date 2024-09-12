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
     
        real,allocatable::r1
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        CALL SUB(TY1(6,OBJ2), 20)
        allocate(r1)
        r1 =40
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA,BBB)
        TYPE(TY1):: AAA
        INTEGER,INTENT(IN) :: BBB
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        IF(BBB.NE. 20) PRINT*,"121"
        deallocate(AAA%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
