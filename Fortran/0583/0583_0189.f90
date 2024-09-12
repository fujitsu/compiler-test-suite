SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        TYPE TY3
        INTEGER:: KK
        TYPE(TY1):: TYOBJ
        END TYPE
        TYPE(TY),ALLOCATABLE::OBJ
        integer,allocatable::at1
        ALLOCATE(OBJ)
        OBJ%JJ = 4
        OBJ%ALC = 5
        CALL SUB(TY3(6,TY1(20,OBJ)))
        allocate(at1)
        at1 =40
        IF(OBJ%ALC.NE.5)PRINT*,"101", OBJ%ALC
        IF(OBJ%JJ.NE.4)PRINT*,"102", OBJ%JJ
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY3):: AAA
        IF(AAA%TYOBJ%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%TYOBJ%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%TYOBJ%II .NE. 20) PRINT*,"123"
        deallocate(AAA%TYOBJ%NODE2)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
