      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST =')
      IP=0
      CALL F18501 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT('0',20X,'= TEST =',5X,'OK')
   30 WRITE (6,40)
   40 FORMAT('0',5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F18501 (IP)
      IMPLICIT COMPLEX*16 (Q)
     0COMMON /Q1 /Q11(2) /Q2/Q21(2) /Q3 /Q31(2)/Q4 /Q41(2) /Q5 /Q51(2)
     1 /Q6 / Q61(2) /Q7/Q71(2) /Q8 /Q81(2)/Q9 /Q91(2)/Q10 /Q101(2)
     2 /Q11 /Q111(2) /Q12 /Q121(2) /Q13 /Q131(2) /Q14 / Q141(2)
     E /Q15 / Q151(2) /Q16 /Q161(2) /Q1 / Q12(2) / Q1/Q13(2)
      Q17=(2.5,3.5)
   30 IF(      DREAL(Q11(1)).EQ.DREAL(Q121(1))
     *    .AND.DIMAG(Q11(1)).EQ.DIMAG(Q121(1))
     *    .AND.DREAL(Q61(2)).EQ.DREAL(Q111(2))
     *    .AND.DIMAG(Q61(2)).EQ.DIMAG(Q111(2))
     *    .AND.DREAL(Q17).EQ.DREAL(Q111(2))
     *    .AND.DIMAG(Q17).EQ.DIMAG(Q111(2)) )  GO TO 10
      IP=IP+1
      WRITE(6,20)Q11(1),Q121(1),Q61(2),Q111(2)
   200FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,E9.2,2X,E9.2,3H ' ,E9.2,2X,
     E E9.2,3H ' ,E9.2,2X,E9.2/40X,E9.2,2X,E9.2,3H ' ,E9.2,2X,E9.2)
   10 IF(      DREAL(Q11(2)).EQ.DREAL(Q12(2))
     *    .AND.DIMAG(Q11(2)).EQ.DIMAG(Q12(2))
     *    .AND.DREAL(Q12(2)).EQ.DREAL(Q13(2))
     *    .AND.DIMAG(Q12(2)).EQ.DIMAG(Q13(2)) ) GO TO 40
      IP=IP+1
      WRITE (6,20) Q11(2),Q12(2),Q13(2)
   40 RETURN
      END
      BLOCK DATA
      IMPLICIT COMPLEX*16 (Q)
     0COMMON /Q1 / Q11(6) /Q2/Q21(2) /Q3/Q31(2)/Q4/Q41(2)/Q5 /Q51(2)
     1 /Q6/Q61(2)/ Q7/Q71(2)/Q8/Q81(2)/Q9/Q91(2)/Q10/ Q101(2)
     2 /Q12/Q121(2) /Q13/Q131(2)/Q14/Q141(2) /Q15 /Q151(2) /Q16/
     E Q161(2)/Q11/Q111(2)
      DATA Q11(2),Q11(4),Q11(6) /3*(2.5,3.5) /
      DATA Q11(1),Q61(2) /2*(2.5,3.5) /
      DATA Q121(1),Q111(2)/2*(2.5,3.5) /
      END