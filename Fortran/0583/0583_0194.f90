SUBROUTINE EX_SUB()

         TYPE TY
         INTEGER,ALLOCATABLE :: ALC2(:,:)
         CHARACTER(LEN=2),ALLOCATABLE :: ALC(:)
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2(:)
        END TYPE
      
        TYPE TY3
        INTEGER:: KK
        TYPE(TY1),ALLOCATABLE :: NODE3
        END TYPE

        TYPE(TY1),ALLOCATABLE :: OBJ2
        
        integer,allocatable::aa
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%NODE2(2))
        ALLOCATE(OBJ2%NODE2(1)%ALC2(3,3))
        ALLOCATE(OBJ2%NODE2(2)%ALC2(2,2))
        ALLOCATE(OBJ2%NODE2(1)%ALC(5))
        ALLOCATE(OBJ2%NODE2(2)%ALC(3))
        OBJ2%NODE2(1)%ALC = ['11','22','33','44','55']
        OBJ2%NODE2(2)%ALC = ['66','77','88']
        OBJ2%NODE2(1)%ALC2 = RESHAPE([1,2,3,4,5,6,7,8,9],[3,3])
        OBJ2%NODE2(2)%ALC2 = RESHAPE([91,92,93,94],[2,2])
        CALL SUB(TY(OBJ2%NODE2(1)%ALC2,OBJ2%NODE2(1)%ALC))
        allocate(aa)
        aa =4567
        IF(ANY(OBJ2%NODE2(1)%ALC.NE.['11','22','33','44','55']))PRINT*,"101  ",OBJ2%NODE2(1)%ALC
        IF(ANY(OBJ2%NODE2(1)%ALC2.NE.RESHAPE([1,2,3,4,5,6,7,8,9],[3,3])))PRINT*,"102", OBJ2%NODE2(1)%ALC2
        IF(ANY(OBJ2%NODE2(2)%ALC.NE.['66','77','88']))PRINT*,"103 ", OBJ2%NODE2(2)%ALC
        IF(ANY(OBJ2%NODE2(2)%ALC2.NE.RESHAPE([91,92,93,94],[2,2])))PRINT*,"104", OBJ2%NODE2(2)%ALC2
        DEALLOCATE(OBJ2%NODE2(1)%ALC2)
        DEALLOCATE(OBJ2%NODE2(2)%ALC2)
        DEALLOCATE(OBJ2%NODE2(1)%ALC)
        DEALLOCATE(OBJ2%NODE2(2)%ALC)
        DEALLOCATE(OBJ2%NODE2)
        DEALLOCATE(OBJ2)
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(CCC)
        TYPE(TY) :: CCC
        deallocate(CCC%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END