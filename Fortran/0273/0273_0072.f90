REAL*2::R,RES,RR(4)
R=10.5
RR=10.5
RES=HUGE(R)
IF(RES /= 6.5504E+04)PRINT*,101
RES=HUGE(RR)
IF(RES /= 6.5504E+04)PRINT*,102
IF(HUGE(MAX(4.5_2,5.5_2)) /= 6.5504E+04)PRINT*,103
IF(HUGE(HUGE(REAL(CMPLX(5.5),KIND=2))) /= 6.5504E+04)PRINT*,104
IF(HUGE(1.5_2 ** 2.4_2) /= 6.5504E+04)PRINT*,105
PRINT*,"PASS"
END
