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
        TYPE(TY1),ALLOCATABLE :: OBJ3
        INTEGER::K=1
        CHARACTER(2),POINTER::P(:)
        CHARACTER(2),TARGET ::T(5)=['11','22','33','44','55']
        IF (K==1) THEN
          P=>T(1:3)
        ELSE
          P=>T(1::2)
        ENDIF
         ALLOCATE(OBJ2)
        ALLOCATE(OBJ2%ALC)
        OBJ2%JJ = 4
        OBJ2%ALC = 5
        CALL SUB(TY1(6,OBJ2), P(:)(:))
        ALLOCATE(OBJ3,SOURCE=TY1(6,OBJ2))
        IF(OBJ2%ALC.NE.5)PRINT*,"101"
        IF(OBJ3%NODE2%ALC.NE.5)PRINT*,"102"
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(OBJ, OBJ2)
        TYPE(TY1) :: OBJ
        CHARACTER(2),INTENT(IN)::OBJ2(5)
        IF(OBJ%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(OBJ%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(OBJ%II .NE. 6) PRINT*,"123"
        deallocate(OBJ%NODE2%ALC)
        END SUBROUTINE
        END SUBROUTINE
CALL EX_SUB()
END
