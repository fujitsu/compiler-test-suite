REAL*2,POINTER::R1=>NULL()
COMPLEX(KIND=2),POINTER::C1=>NULL()
IF(ASSOCIATED(R1).NEQV. .FALSE.)PRINT*,"101"
IF(ASSOCIATED(C1).NEQV. .FALSE.)PRINT*,"102"
PRINT*,"PASS"
END
