 MODULE M
          TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE
      CONTAINS  
      FUNCTION FUN (AAA, BBB)
        TYPE(TY1):: AAA
        TYPE(TY1),INTENT(IN) :: BBB
        TYPE(TY1) :: FUN
        IF(AAA%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        IF(BBB%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(BBB%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(BBB%II .NE. 6) PRINT*,"123"
        deallocate(AAA%NODE2%ALC)
        FUN =BBB
        END FUNCTION
END MODULE

USE M
        TYPE(TY),ALLOCATABLE :: OBJ2
        TYPE(TY1):: OBJ3
        integer,allocatable::xarr
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        OBJ3 =FUN(TY1(6,OBJ2), TY1(6,OBJ2))
        allocate(xarr)
        xarr =567
        IF(OBJ2%ALC.NE.5)PRINT*,"101", OBJ2%ALC
        IF(OBJ2%JJ.NE.4)PRINT*,"102", OBJ2%JJ
        IF(OBJ3%NODE2%ALC.NE.5)PRINT*,"103", OBJ3%NODE2%ALC
        IF(OBJ3%NODE2%JJ.NE.4)PRINT*,"104", OBJ3%NODE2%JJ
        PRINT*,"PASS"
END
