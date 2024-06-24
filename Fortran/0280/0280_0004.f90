REAL(KIND=2) ,PARAMETER::H=DBLE(2.0_2+3.0_2*2.0_2)
REAL*2,PARAMETER::R2=5.556_2,R3=34.4_2
COMPLEX(KIND=2),PARAMETER::C2=(10.55_2,20.677_2),C3=(21.2_2,43.34_2)

REAL*8,PARAMETER::R8_1=DBLE(R2+R3)
REAL*8,PARAMETER::R8_2=DBLE(C2+C3)
REAL*8,PARAMETER::R8_3=DBLE(H)
REAL*8,PARAMETER::R8_4=DBLE(R8_1*R8_2)
IF(R8_1 .NE. 39.96875000000000)PRINT*,"101"
IF(R8_2 .NE. 31.75000000000000)PRINT*,"102"
IF(R8_3 .NE. 8.000000000000000)PRINT*,"103"
IF(R8_4 .NE. 1269.007812500000)PRINT*,"104"
PRINT*,"PASS"

END