      DIMENSION J(20)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6,18X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6,18X,I6)
  104 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X,
     *E14.7)
  105 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X,
     *E14.7)
  106 FORMAT(I3)
      N   =0
      M   =0
      A   =0.0
      B   =0.0
      C   =3.5
      K   =2
      K2  =0
      LL  =0
      I1  =0
      I2  =2
C
      DO 42 I =1,5
      N   =N+1+2*3
      A   =A+0.2*5.0
   42 CONTINUE
      DO 43 I =1,5,1
      M   =M+1+2*3
      B   =B+0.2*5.0
   43 CONTINUE
      JANS=35
      ANS =5.0
      ITM =01
      IF(N-M)1,2,1
    1 WRITE(6,102)ITM,N,M,JANS
      GO TO 500
    2 WRITE(6,103)ITM
C
  500 ITM =ITM+1
      IF(A-B)3,4,3
    3 WRITE(6,104)ITM,A,B,ANS
      GO TO 501
    4 WRITE(6,105)ITM
C
  501 DO 30 I=1,5
      K2  =K2+K*IFIX(C)
   30 CONTINUE
      DO 40 I=1,5,1
   40 I1  =I1+I2*IFIX(C)
      JANS=30
      ITM =ITM+1
      IF(K2-I1)5,6,5
    5 WRITE(6,102)ITM,K2,I1,JANS
      GO TO 502
    6 WRITE(6,103)ITM
C
C
  502 M   =0
      ITM =ITM+1
      N   =0
      DO 45 I=1,7,2
      N   =N+1
      CALL SUB(M,K)
   45 CONTINUE
      JANS=24
      IF(JANS-M)7,8,7
    7 WRITE(6,102)ITM,N,M,JANS
      GO TO 503
    8 WRITE(6,103)ITM
C
C
  503 ITM=ITM+1
      M   =0
      N   =0
      DO 50 I=1,7,2
      N   =N+1
   50 CALL SUB(M,K)
      JANS=24
      IF(JANS-M)9,10,9
    9 WRITE(6,102)ITM,N,M,JANS
      GO TO 504
   10 WRITE(6,103)ITM
C
C
  504 N   =0
      ITM=ITM+1
      DO 60 I=1,20,5
      N   =N+1
   60 READ(5,106)J(I)
      JANS=8
      JJ  =J(1)+J(6)+J(11)+J(16)
      IF(JANS-JJ)11,12,11
   11 WRITE(6,102)ITM,N,JJ,JANS
      GO TO 505
   12 WRITE(6,103)ITM
C
  505 N   =0
      ITM =ITM+1
      DO 70 I=1,20,5
      N   =N+1
      J(I)=J(I)*2
   70 WRITE(6,106)J(I)
      JANS=16
      JJ  =J(1)+J(6)+J(11)+J(16)
      IF(JANS-JJ)13,14,13
   13 WRITE(6,102)ITM,N,JJ,JANS
      GO TO 506
   14 WRITE(6,103)ITM
C
C
  506 N   =0
      I   =10
      DO 80 I=I,20,3
      N   =N+I
   80 CONTINUE
      ITM =ITM+1
      JANS=58
      IF(JANS-N)15,16,15
   15 WRITE(6,102)ITM,I,N,JANS
      GO TO 507
   16 WRITE(6,103)ITM
C
  507 DO 90 I=2,4
      LL  =LL+LF(2)
   90 CONTINUE
      JANS=18
      ITM =ITM+1
      IF(JANS-LL)17,18,17
   17 WRITE(6,102)ITM,I,LL,JANS
      GO TO 508
   18 WRITE(6,103)ITM
C
  508 ITM =ITM+1
      LL  =0
      DO 95 I=2,4
   95 LL  =LL+LF(2)
      JANS=18
      IF(JANS-LL)19,20,19
   19 WRITE(6,102)ITM,I,LL,JANS
      GO TO 509
   20 WRITE(6,103)ITM
  509 CONTINUE
      STOP 1234
      END
      SUBROUTINE SUB(M,K)
      M=M+3*K
      RETURN
      END
      FUNCTION LF(I)
      LF  =2**3-I
      RETURN
      END
