 REAL*2,PARAMETER :: XX =-65503.5_2
 REAL*2::ZZ=ABS(-65503.5_2)
 REAL*2,PARAMETER::ZZ2=ABS(XX)
 IF(ZZ /=65503.5_2 )PRINT*,101
 IF(ZZ2 /=65503.5_2 )PRINT*,102
 PRINT*,"PASS"
END PROGRAM
