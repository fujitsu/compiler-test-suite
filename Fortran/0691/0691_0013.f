      DOUBLE PRECISION I,J,NASI,REST ,ANS,DIF,CONS16
     *,JB
      DOUBLE PRECISION IA(3),JA(2,3,4),L(3),N(3,3)
      CONS16=1.0D-5
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,44H- JUSTICE -     - ITEM -          - COMPUTED,
     *9H RESULT -,11X,17H- COMPARE VALUE -,15X,14H- DEFFERENCE - /)
  104 FORMAT(1H0 12X,7H*ERROR*,7X,2H( ,I2,2H ),7X,D24.17,7X,D24.17,7X,
     *D24.17)
  105 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),7X,D24.17,7X,D24.17,7X,
     *D24.17)
  999 FORMAT(1H0/ 2X,27H*FORTRAN*              EXIT)
      I=4.33D+01
      J=-1.111D+0
      JB=12343D-1
      JB=12343E-1
      L(3)=5.55555555555555555
      N(3,2)=6.666D+0
      IA(3) =13.69
      JA(2,3,2)=-2.8
      ITM =01
    1 REST =I*J-JB-1.0
      ANS=-1283.406287792968
      GO TO 701
    2 REST =L(3)/1.11+N(3,2)*0.1+1000.0
      ANS=1005.67160500500
      GO TO 701
    3 REST =IA(3)**0.5+JA(2,3,2)*2.0-1000.0
      ANS=-0.10019D+4
      GO TO 701
    4 REST=NASI(0.4D+0)*300.0
      ANS =1521.0
      GO TO 701
  701 DIF =REST-ANS
      IF (DABS(DIF)-CONS16*DABS(ANS))  903,902,902
  902 WRITE(6,104)ITM,REST,ANS,DIF
      GO TO 1000
  903 WRITE(6,105)ITM,REST,ANS,DIF
      GO TO 1000
 1000 ITM =ITM+1
      GO TO (1,2,3,4,5),ITM
    5 WRITE(6,999)
      STOP
      END
      DOUBLE PRECISION FUNCTION NASI(X)
      DOUBLE PRECISION X
      NASI=0.8D0*X+4.75D0
      RETURN
      END