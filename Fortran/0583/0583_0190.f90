SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC(:)
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        TYPE(TY),ALLOCATABLE :: OBJ2
        integer,allocatable::tt1
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC(5))
        OBJ2%JJ = 4
        OBJ2%ALC = [1,2,3,4,5]
        CALL SUB(TY1(6,OBJ2))
        allocate(tt1)
        tt1= 100
        IF(ANY(OBJ2%ALC.NE.[1,2,3,4,5]))PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%JJ
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY1) :: AAA
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(ANY(AAA%NODE2%ALC .NE.[1,2,3,4,5])) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        deallocate(AAA%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
