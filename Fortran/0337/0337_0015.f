      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM        - COMPUTED,
     *9H RESULT -)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6)
      J   =0
      ITM =01
   10 J   =J+1
      GO TO 20
   50 J   =J+1
      GO TO 30
   20 IF(J-10)200,200,300
      J   =900
  200 J   =J+1
      GO TO 40
      J   =900
   40 J   =J+1
      GO TO 50
      J   =900
   30 J   =J+1
      GO TO 10
  300 IF(900-J)202,202,203
  202 WRITE(6,102)ITM,J
      GO TO 60
  203 WRITE(6,103)ITM,J
   21 GO TO 60
   52 WRITE(6,102)ITM,J
   60 CONTINUE
      STOP
      END
