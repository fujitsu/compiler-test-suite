SUBROUTINE EX_SUB()

         TYPE TY
         INTEGER,ALLOCATABLE :: ALC2(:,:)
         CHARACTER(LEN=2),ALLOCATABLE :: ALC(:)
         END TYPE

        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        TYPE(TY),ALLOCATABLE :: OBJ2
        CHARACTER(LEN=2),ALLOCATABLE :: ALC9(:)
          
        ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC(5))
        ALLOCATE(OBJ2%ALC2(3,3))
        OBJ2%ALC = ['11','22','33','44','55']
        OBJ2%ALC2 = RESHAPE([1,2,3,4,5,6,7,8,9],[3,3])
        CALL SUB(TY1(6,OBJ2))
        allocate(ALC9(5))
        ALC9 =  ['11','22','33','44','55']
        IF(ANY(OBJ2%ALC.NE.['11','22','33','44','55']))PRINT*,"101  ", OBJ2%ALC
        IF(ANY(OBJ2%ALC2.NE.RESHAPE([1,2,3,4,5,6,7,8,9],[3,3])))PRINT*,"102", OBJ2%ALC2
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY1):: AAA
        IF(ANY(AAA%NODE2%ALC .NE.['11','22','33','44','55'])) PRINT*,"122"
        IF(ANY(AAA%NODE2%ALC2 .NE.RESHAPE([1,2,3,4,5,6,7,8,9],[3,3]))) PRINT*,"122"
        IF(AAA%II .NE. 6) PRINT*,"123"
        deallocate(AAA%NODE2%ALC2)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
