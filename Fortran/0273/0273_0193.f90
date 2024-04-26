 REAL (KIND=2) :: R,R1
 COMPLEX (KIND=2) :: C,C1
 R=5.0_2
 R1=5.0_2
 C=(1.0_2,2.0_2)
 C1=(1.0_2,2.0_2)
 IF((R/=R1).OR.(C/=C1)) PRINT *,'101'
 R1=6.0_2
 C1=(2.0_2,2.0_2)
 IF((R.EQ.R1).OR.(C.EQ.C1)) PRINT *,'102'
 PRINT *,'PASS'
 END

