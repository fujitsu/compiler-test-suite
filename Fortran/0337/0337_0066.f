      DIMENSION I(20,20),J(20,20),K(20,20),X(20,20),Y(20,20),Z(20,20)
      COMMON IN
      IN =10
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
  104 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7)
  105 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7)
      N  =0
      DO 30 I1 =1,10
      DO 35 J1 =1,10
      I(J1,I1) =J1
      J(J1,I1) =I1+N
   35 CONTINUE
      N  =N+1
      DO 36 J1 =11,20
      I(J1,I1) =J1-10
      J(J1,I1) =I1+N
   36 CONTINUE
   30 CONTINUE
      CALL MTRPRD(I,J,K,10)
      ITM =1
      A  =0.0
      DO 40 I1 =1,10
      DO 45 J1 =1,10
      X(J1,I1) =FLOAT(J1)/10.0
      Y(J1,I1) =FLOAT(I1)/10.0+A
   45 CONTINUE
      A   =A+0.1
      DO 46 J1 =11,20
      X(J1,I1) =FLOAT(J1-10)/10.0
      Y(J1,I1) =FLOAT(I1)/10.0+A
   46 CONTINUE
   40 CONTINUE
      CALL MTR(X,Y,Z,10)
C
    1 JANS=10
      M   =K(1,1)
      GO TO 700
C
    2 JANS=250
      M   =K(5,3)
      GO TO 700
C
    3 JANS=240
      M   =K(16,2)
      GO TO 700
C
    4 JANS=1000
      M   =K(20,5)
      GO TO 700
C
    5 JANS=180
      M   =K(19,1)
      GO TO 700
C
    6 ANS=0.2
      A   =Z(2,1)
      GO TO 701
C
    7 ANS =0.6
      A   =Z(13,1)
      GO TO 701
C
    8 ANS =1.5
      A   =Z(3,3)
      GO TO 701
C
    9 ANS =6.4
      A   =Z(18,4)
      GO TO 701
C
   10 ANS =9.0
      A   =Z(19,5)
      GO TO 701
  700 IF(M-JANS)500,501,500
  701 IF(ABS(A-ANS)-1.0E-05)503,502,502
  500 WRITE(6,102)ITM,M,JANS
      GO TO 1000
  501 WRITE(6,103)ITM
      GO TO 1000
  502 WRITE(6,104)ITM,A,ANS
      GO TO 1000
  503 WRITE(6,105)ITM
 1000 ITM =ITM+1
      GO TO (1,2,3,4,5,6,7,8,9,10,11),ITM
   11 CONTINUE
      STOP
      END
      SUBROUTINE MTRPRD(I,J,K,N)
      DIMENSION I(N,N),J(N,N),K(N,N)
      DO 10 II=1,N
      DO 20 JJ=1,N
      K(II,JJ)=0
      DO 30 KK=1,N
      K(II,JJ)=K(II,JJ)+I(II,KK)*J(KK,JJ)
   30 CONTINUE
   20 CONTINUE
   10 CONTINUE
      RETURN
      END
      SUBROUTINE MTR(X,Y,Z,N)
      DIMENSION X(N,N),Y(N,N),Z(N,N)
      DO 10 II=1,N
      DO 20 JJ=1,N
      Z(II,JJ)=0
      DO 30 KK=1,N
      Z(II,JJ)=Z(II,JJ)+X(II,KK)*Y(KK,JJ)
   30 CONTINUE
   20 CONTINUE
   10 CONTINUE
      RETURN
      END
