      DIMENSION N(10),M(7,8)
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM  -     - COMPUTED,
     *58H RESULT -          - COMPARE VALUE -        - DIFFERENCE -)
C
C
      N(1)=3
      JANS=3
      ITM =01
      IF(JANS-N(1))1,2,1
    1 WRITE(6,102)ITM,N(1),JANS
      GO TO 500
    2 WRITE(6,103)ITM,N(1),JANS
C
C
  500 N(2)=-4
      JANS=-4
      ITM =ITM+1
      IF(JANS-N(2))3,4,3
    3 WRITE(6,102)ITM,N(2),JANS
      GO TO 501
    4 WRITE(6,103)ITM,N(2),JANS
C
C
  501 N(10)=N(1)*2+N(2)**2
      JANS=22
      ITM =ITM+1
      IF(JANS-N(10))5,6,5
    5 WRITE(6,102)ITM,N(10),JANS
      GO TO 502
    6 WRITE(6,103)ITM,N(10),JANS
C
C
  502 M(1,1)=50
      JANS  =50
      ITM   =ITM+1
      IF(JANS-M(1,1))7,8,7
    7 WRITE(6,102)ITM,M(1,1),JANS
      GO TO 503
    8 WRITE(6,103)ITM,M(1,1),JANS
C
C
  503 M(7,8)=M(1,1)-N(1)*N(2)
      JANS=62
      ITM =ITM+1
      IF(JANS-M(7,8))9,10,9
    9 WRITE(6,102)ITM,M(7,8),JANS
      GO TO 504
   10 WRITE(6,103)ITM,M(7,8),JANS
C
  504 CONTINUE
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
      STOP
      END