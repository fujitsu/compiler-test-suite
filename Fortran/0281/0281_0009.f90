REAL(2) :: ACT1
COMPLEX(2) :: ACT2
REAL(2) :: ACT3
COMPLEX(2) :: ACT4
REAL(2) :: ACT5
COMPLEX(2) :: ACT6
ACT1=7
ACT2=(3,4)
ACT3=5
ACT4=(6,7)
ACT5=8
ACT6=(9,10)
CALL S(ACT1,ACT2,ACT3,ACT4,ACT5,ACT6)
IF(ACT1 .NE. 1.0_2)PRINT*,"101"
IF(ACT2 .NE. (5,6))PRINT*,"102"
IF(ACT3 .NE. 7)PRINT*,"105"
IF(ACT4 .NE. (8,9))PRINT*,"106"
PRINT*,"PASS"
CONTAINS
SUBROUTINE S(D1,D2,D3,D4,D5,D6)
REAL(2) :: D1
INTENT(OUT) :: D1
COMPLEX(2) :: D2
INTENT(OUT) :: D2
REAL(2) :: D3
INTENT(INOUT) :: D3
COMPLEX(2) :: D4
INTENT(INOUT) :: D4
REAL(2) :: D5
INTENT(IN) :: D5
COMPLEX(2) :: D6
INTENT(IN) :: D6
D1=0.0_2
D2=(4,5)
D1=D1+1
D2=D2+(1,1)
D3=D3+2
D4=D4+(2,2)
IF(D5 .NE. 8)PRINT*,"103"
IF(D6 .NE. (9,10))PRINT*,"104"
END SUBROUTINE
END
