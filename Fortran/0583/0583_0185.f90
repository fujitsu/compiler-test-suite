SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY) :: NODE2
        END TYPE

        TYPE(TY):: OBJ2
        integer,allocatable::t1

        OBJ2%JJ = 4
        OBJ2%ALC = 5
        CALL SUB(TY1(6,OBJ2))
        allocate(t1)
        t1= 50
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY1) :: AAA
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
