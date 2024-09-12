SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        INTEGER,ALLOCATABLE::A
        ALLOCATE(A)
        A=15
        CALL SUB(TY1(6,TY(10,A)))
        IF(A.NE.15)PRINT*,"101",A
        
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(OBJ)
        TYPE(TY1) :: OBJ
        IF(OBJ%NODE2%JJ .NE. 10) PRINT*,"121"
        IF(OBJ%NODE2%ALC .NE. 15) PRINT*,"122"
        IF(OBJ%II .NE. 6) PRINT*,"123"
        deallocate(OBJ%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
