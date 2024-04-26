      DIMENSION K(10)
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM        - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,I6)
C
      M   =10
      K(1)=2
      K(2)=3
      K(3)=4
      K(4)=5
      K(5)=-6
C
      N   =0
      DO 90 I=2,20
      N   =N+1
   90 CONTINUE
      ITM =01
      JA  =19
      IF(N-19)1,2,1
    1 WRITE(6,102)ITM,N,JA
      GO TO 500
    2 WRITE(6,103)ITM,N,JA
C
C
  500 N   =0
      ITM =ITM+1
      DO 20 I=1,M
      N=N+1
   20 CONTINUE
      JA  =10
      IF(N-10)3,4,3
    3 WRITE(6,102)ITM,N,JA
      GO TO 511
    4 WRITE(6,103)ITM,N,JA
C
  511 N   =0
      ITM =ITM+1
      DO 30 I=3,3
      N   =N+1
   30 CONTINUE
      JA  =1
      IF(N-1)5,6,5
    5 WRITE(6,102)ITM,N,JA
      GO TO 512
    6 WRITE(6,103)ITM,N,JA
C
C
  512 N   =0
      ITM =ITM+1
      DO 40 I=M,M
      N   =N+1
   40 CONTINUE
      JA  =1
      IF(N-1)7,8,7
    7 WRITE(6,102)ITM,N,JA
      GO TO 513
    8 WRITE(6,103)ITM,N,JA
C
      JA  =8
C
  513 N   =0
      ITM =ITM+1
      DO 50 I=1,5
      N=N+K(I)
   50 CONTINUE
      IF(N-8)9,10,9
    9 WRITE(6,102)ITM,N,JA
      GO TO 514
   10 WRITE(6,103)ITM,N,JA
C
C
  514 N   =0
      ITM =ITM+1
      DO 60 I=3,M
      K(I)=I-1
      N   =N+K(I)
   60 CONTINUE
      JA  =44
      IF(N-44)11,12,12
   11 WRITE(6,102)ITM,N,JA
      GO TO 515
   12 WRITE(6,103)ITM,N,JA
  515 CONTINUE
      STOP
      END
