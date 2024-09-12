SUBROUTINE EX_SUB()
         TYPE TY
         INTEGER :: JJ
         INTEGER,ALLOCATABLE :: ALC
         END TYPE
        TYPE TY1
         INTEGER :: II
        TYPE(TY), ALLOCATABLE :: NODE2
        END TYPE

        TYPE TY2
         INTEGER :: KK
        TYPE(TY1), ALLOCATABLE :: NODE3
        END TYPE
        
        TYPE TY3
         INTEGER :: LL
        TYPE(TY2), ALLOCATABLE :: NODE4
        END TYPE
        TYPE(TY), ALLOCATABLE :: OBJ

       integer,allocatable::alc(:)
        ALLOCATE(OBJ)
        ALLOCATE(OBJ%ALC)
        OBJ%ALC =20
        OBJ%JJ =10
       
        CALL SUB(TY3(13,TY2(6,TY1(7, OBJ))))
        allocate(alc(200))
        alc =467
        IF(OBJ%ALC.NE.20)PRINT*,"101"
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(OBJ)
        TYPE(TY3) :: OBJ
        IF(OBJ%NODE4%NODE3%NODE2%JJ .NE. 10) PRINT*,"121"
        IF(OBJ%NODE4%NODE3%NODE2%ALC .NE. 20) PRINT*,"122"
        IF(OBJ%NODE4%NODE3%II.NE.7) PRINT*,"123"
        IF(OBJ%NODE4%KK .NE. 6) PRINT*,"124"
        IF(OBJ%LL .NE. 13) PRINT*,"125"
        deallocate(OBJ%NODE4)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
