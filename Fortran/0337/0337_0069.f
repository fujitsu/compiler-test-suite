      COMMON I,J,K(3),L(2,2,2)/BCK/L1,L2(2,2,2)/BCK2/J1,J2,J3(2,2)
      WRITE(6,101)
  101 FORMAT(1H0 // 10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *36H RESULT -          - COMPARE VALUE -,/)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
      J   =22222
      K(3)=-5432
      J3(2,2)=32323
      J1  =-32767
      CALL SUB1(ITM)
C
    9 JANS=13561
      JRE =I
      GO TO 700
C
   10 JANS=5531
      JRE =K(1)
      GO TO 700
C
   11 JANS=-23432
      JRE =L(1,1,1)
      GO TO 700
C
   12 JANS=-3241
      JRE =L(1,1,2)
      GO TO 700
C
   13 JANS=32767
      JRE =L1
      GO TO 700
C
   14 JANS=-32767
      JRE =L2(2,2,1)
      GO TO 700
C
   15 JANS=28282
      JRE =J2
      GO TO 700
C
   16 JANS=-31121
      JRE =J3(2,1)
      GO TO 700
  700 IF(JRE-JANS)901,900,901
  900 WRITE(6,103)ITM,JRE,JANS
      GO TO 1000
  901 WRITE(6,102)ITM,JRE,JANS
 1000 ITM =ITM+1
      IT  =ITM-9
      GO TO (10,11,12,13,14,15,16,17),IT
   17 CONTINUE
      STOP
      END
      SUBROUTINE SUB1(ITM)
      COMMON KK(10)/BCK2/N(6)/BCK3/M(3,3)
      KK(1)=13561
      KK(3)=5531
      KK(6)=-23432
      KK(10)=-3241
      ITM =1
      CALL SUB2
C
    1 JANS=28282
      JRE =N(2)
      GO TO 700
C
    2 JANS=-31121
      JRE =N(4)
      GO TO 700
C
    3 JANS=12345
      JRE =M(2,1)
      GO TO 700
C
    4 JANS=22222
      JRE =KK(2)
      GO TO 700
C
    5 JANS=-5432
      JRE =KK(5)
      GO TO 700
C
    6 JANS=32323
      JRE =N(6)
      GO TO 700
C
    7 JANS=-32767
      JRE =N(1)
      GO TO 700
C
    8 JANS=-23456
      JRE =M(2,3)
  700 IF(JRE-JANS)901,900,901
  900 WRITE(6,103)ITM,JRE,JANS
      GO TO 1000
  901 WRITE(6,102)ITM,JRE,JANS
 1000 ITM =ITM+1
      GO TO (1,2,3,4,5,6,7,8,9),ITM
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
    9 RETURN
      END
      SUBROUTINE SUB2
      COMMON /BCK/LL(9)/BCK3/NN(9)/BCK2/NI(6)
      LL(1)=32767
      LL(5)=-32767
      NN(2)=12345
      NN(8)=-23456
      NI(2)=28282
      NI(4)=-31121
      RETURN
      END
