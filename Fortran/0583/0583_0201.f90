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
        TYPE(TY),ALLOCATABLE :: OBJ3
        
        integer,allocatable::rxx1
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        ALLOCATE(OBJ3)
        ALLOCATE(OBJ3%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        OBJ3%JJ = 14
        OBJ3%ALC = 15
        CALL SUB(TY1(6,OBJ2), TY1(6,OBJ3), TY1(6,OBJ2), TY1(6,OBJ3))
        allocate(rxx1)
        rxx1 =90
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%JJ
        IF(OBJ3%ALC.NE.15)PRINT*,"103", OBJ3%ALC
        IF(OBJ3%JJ.NE.14)PRINT*,"104", OBJ3%JJ
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA,BBB, CCC, DDD)
        TYPE(TY1) :: AAA
        TYPE(TY1) :: BBB
        TYPE(TY1),INTENT(IN) :: CCC
        TYPE(TY1):: DDD
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121", AAA%NODE2%JJ
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        IF(BBB%NODE2%JJ .NE. 14) PRINT*,"121"
        IF(BBB%NODE2%ALC .NE. 15) PRINT*,"122"
        IF(BBB%II .NE. 6) PRINT*,"123"
        IF(CCC%NODE2%JJ .NE. 4) PRINT*,"121", AAA%NODE2%JJ
        IF(CCC%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(CCC%II .NE. 6) PRINT*,"123"
        IF(DDD%NODE2%JJ .NE. 14) PRINT*,"121"
        IF(DDD%NODE2%ALC .NE. 15) PRINT*,"122"
        IF(DDD%II .NE. 6) PRINT*,"123"
        deallocate(AAA%NODE2%ALC)
        deallocate(BBB%NODE2%ALC)
        deallocate(DDD%NODE2%ALC)

        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
