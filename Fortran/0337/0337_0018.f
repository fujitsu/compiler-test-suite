  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7)
  104 FORMAT(1H0,13X,12H PAUSE  1234)
  105 FORMAT(1H0,13X,12H PAUSE  4567)
  106 FORMAT(1H0,13X,12H PAUSE  7777)
      B   =2.5
      C   =0.1E 01
C
      ITM =01
      A   =B*C+2.5
C
      WRITE(6,104)
      A   =A+B
      D   =B*C+2.5
      D   =D+B
      IF(A-D)1,2,1
    1 WRITE(6,102)ITM,A,D
      GO TO 500
    2 WRITE(6,103)ITM
C
  500 ITM =ITM+1
      A   =B**2+C/0.3
      WRITE(6,105)
      A   =A-B*C
      WRITE(6,106)
      A   =A/B
      D   =B**2+C/0.3
      D   =D-B*C
      D   =D/B
      IF(A-D)3,4,3
    3 WRITE(6,102)ITM,A,D
      GO TO 501
    4 WRITE(6,103)ITM
  501 CONTINUE
      STOP
      END
