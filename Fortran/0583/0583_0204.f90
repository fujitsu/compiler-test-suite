 MODULE M
          TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE
END MODULE

USE M
        TYPE(TY),ALLOCATABLE :: OBJ2
        TYPE(TY1):: OBJ3
        integer,allocatable::arr(:)
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        OBJ3 =FUN(TY1(6,OBJ2))
        allocate(arr(7))
        arr =[1,2,3,4,5,6,7]
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%JJ
        IF(OBJ3%NODE2%ALC.NE.5)PRINT*,"103", OBJ3%NODE2%ALC
        IF(OBJ3%NODE2%JJ.NE.4)PRINT*,"104", OBJ3%NODE2%JJ
        PRINT*,"PASS"
        CONTAINS
        FUNCTION FUN (AAA)
        TYPE(TY1):: AAA
        TYPE(TY1) :: FUN
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        FUN =AAA
        deallocate(AAA%NODE2%ALC)
        END FUNCTION
END
