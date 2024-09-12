      WRITE (6,10)
10    FORMAT(1H1,5X,'====== FORTRAN ====== ... = TEST =')
      IP = 0
      CALL  F58108(IP)
      IF(IP.NE.0) GO TO 30
      WRITE(6,20)
20    FORMAT(10X,'= TEST =     OK')
30    WRITE(6,40)
40    FORMAT (1H ,20X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE  F58108(IP)
      IMPLICIT REAL*8 (D),COMPLEX (C), COMPLEX * 16 (W) , LOGICAL (L)
      DIMENSION  R(10),D(10),C(10),W1001(10),L1001(10)
      INTEGER A
      DIMENSION A(10)
      DATA A/1,2,3,4,5,6,7,8,9,10/
      A(9) = A(3) + (A(1)+A(2))/2 +A(4)
      A(10)=(A(1)+A(2))/2
      IF(A(9).EQ.A(3)+A(10)+A(4)) GO TO 510
      IP = IP + 1
      WRITE(6,100)
100   FORMAT(1H ,20X,40HWRONG =======================
     E)
     0DATA R/ 11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0,
     E20.0 /
510   R(9)= R(2) + ((R(1)+R(3))*5 +R(4))
      R(10) = ((R(1)+R(3))*5+R(4))
      IF(R(9).EQ.R(2) +R(10)) GO TO 1010
      IP = IP + 1
      WRITE(6,520)
  520 FORMAT(1H ,20X,20HWRONG ==============)
     0DATA D /1.0D1, 2.0D1, 3.0D1, 4.0D1, 5.0D1, 6.0D1, 7.0D1,
     E8.0D1, 9.0D1,10.0D1 /
1010  D(10) = D(1) + D(2) + 2*(R(1)+R(2))**2
      D(3) = 2*(R(1)+R(2))**2
      IF(D(10).EQ. D(1)+D(2)+D(3)) GO TO 1510
      IP = IP + 1
      WRITE(6,1020)
1020  FORMAT(1H , 20X, 'WRONG =================== ' )
     0DATA C / (1.0, 1.0), (2.0, 2.0), (3.0, 3.0), (4.0, 4.0),
     1(5.0, 5.0), (6.0, 6.0), (7.0, 7.0), (8.0, 8.0), (9.0, 9.0),
     E(10.0, 10.0) /
1510  C(9)= C(3) + (C(1)+C(2))/C(4)*CCOS(C(5))
      C(10) = (C(1)+C(2))/C(4)*CCOS(C(5))
      IF(ABS(REAL(C(9))-REAL(C(3)+C(10))).LT.1.0E-4 .AND.
     -   ABS(IMAG(C(9))-IMAG(C(3)+C(10))).LT.1.0E-4) GO TO 2010
      IP = IP + 1
      WRITE(6,1520)
1520  FORMAT(1H , 20X, 'WRONG ======================' )
     0DATA W1001 /(1.0D1, 1.0D1), (2.0D1, 2.0D1), (3.0D1, 3.0D1),
     1(4.0D1, 4.0D1), (5.0D1, 5.0D1), (6.0D1, 6.0D1), (7.0D1, 7.0D1)
     E, (8.0D1, 8.0D1), (9.0D1, 9.0D1), (10.0D1, 10.0D1) /
2005  WW=W1001(2)**2
 2010 W1001(10)=W1001(1)+((W1001(2)**2+W1001(3))/W1001(4) -
     EW1001(5) )
      W1001(9) = W1001(2) ** 2
      W1001(9) = W1001(9) + W1001(3)
      W1001(9) = W1001(9) / W1001(4)
      W1001(9) =W1001(9) -W1001(5)
      W1001(9) =W1001(9) +W1001(1)
      W1001(8) = ((W1001(2) **2 + W1001(3)) / W1001(4) - W1001(5))
      W1001(7) =W1001(8) +W1001(1)
      IF((DREAL(W1001(10)).EQ.DREAL(W1001(9)).AND.
     1   DIMAG(W1001(10)).EQ.DIMAG(W1001(9)))  .AND.
     2   (DREAL(W1001(9)).EQ.DREAL(W1001(7))  .AND.
     3    DIMAG(W1001(9)).EQ.DIMAG(W1001(7)))) GO TO 2510
      IP = IP + 1
      WRITE(6,2520)
2520  FORMAT(1H ,20X ,'WRONG =============================' )
     0DATA L1001 /.TRUE.,.FALSE. , .TRUE., .FALSE., .TRUE., .FALSE.,
     E.TRUE., .FALSE., .TRUE., .FALSE. /
 2510 L1001(10)=(L1001(1).AND.L1001(2).OR.L1001(3).AND.L1001(4)).
     EAND.(L1001(5). OR.L1001(6) )
     0L1001(9) = (L1001(1).AND.L1001(2).OR.L1001(3).AND.L1001(4)).AND.
     E(L1001(5). OR. L1001(6) )
      IF(.NOT.L1001(9)) GO TO 3010
      IP = IP + 1
      WRITE (6,2530)
2530  FORMAT(1H ,20X, 'WRONG ======================' )
3010  RETURN
      END
