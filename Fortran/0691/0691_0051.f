      LOGICAL   L1,P,Q,T1,T2,T3,T4,T5,LILY,LIP,LOO,LA,LB,LC,LD,L(5)
  100 FORMAT(1H1 / 6X,24H*FORTRAN*          ENTER)
  101 FORMAT(1H0 // 5X,11H- JUSTICE -,4X,8H- ITEM -,10X,
     119H- COMPUTED RESULT -,17X,17H- COMPARE VALUE -)
  102 FORMAT(1H0,7X,4H*OK*,11X,1H(,I2,1H),4X)
  103 FORMAT(1H0,7X,7H*ERROR*,8X,1H(,I2,1H),4X)
  104 FORMAT(1H0,7X, 4H*OK*,19X)
  105 FORMAT(1H0,7X, 7H*ERROR*,16X)
 1000 FORMAT(1H1,10X)
  999 FORMAT(1H0 // 6X,23H*FORTRAN*          EXIT)
  700 FORMAT(1H+,47X,L1,34X,L1)
      J1=1
      J2=2
      J3=3
      J4=4
      J5=5
      DA=5.0
      DB=3.0
      DC=0.0
      WRITE(6,100)
      WRITE(6,101)
      T1=.TRUE.
      L1=.TRUE.
      IF(L1)GO TO 20
      WRITE(6,103)J1
      GO TO 21
   20 WRITE(6,102)J1
   21 WRITE(6,700)L1,T1
      T2=DA.EQ.DB
      P=DA.EQ.DB
      Q=DA.EQ.DB
      IF(P)GO TO 22
      WRITE(6,102)J2
      GO TO 23
   22 WRITE(6,103)J2
   23 WRITE(6,700)P,T2
      IF(Q)GO TO 24
      WRITE(6,104)
      GO TO 25
   24 WRITE(6,105)
   25 WRITE(6,700)Q,T2
      T3=DA.GT.2.5.AND.DC.NE.36.53E-5
      LILY=T3
      LIP=T3
      LOO=T3
      IF(LILY)GO TO 26
      WRITE(6,103)J3
      GO TO 27
   26 WRITE(6,102)J3
   27 WRITE(6,700)LILY,T3
      IF(LIP)GO TO 28
      WRITE(6,105)
      GO TO 29
   28 WRITE(6,104)
   29 WRITE(6,700)LIP,T3
      IF(LOO)GO TO 30
      WRITE(6,105)
      GO TO 31
   30 WRITE(6,104)
   31 WRITE(6,700)LOO,T3
      T4=DC.LT.DB.AND.DA.GT.DB
      LA=DC.LT.DB.AND.DA.GT.DB
      LB=DC.LT.DB.AND.DA.GT.DB
      LC=DC.LT.DB.AND.DA.GT.DB
      L(6*J5-25)=DC.LT.DB.AND.DA.GT.DB
      IF(LA)GO TO 32
      WRITE(6,103)J4
      GO TO 33
   32 WRITE(6,102)J4
   33 WRITE(6,700)LA,T4
      IF(LB)GO TO 34
      WRITE(6,105)
      GO TO 35
   34 WRITE(6,104)
   35 WRITE(6,700)LB,T4
      IF(LC)GO TO 36
      WRITE(6,105)
      GO TO 37
   36 WRITE(6,104)
   37 WRITE(6,700)LC,T4
      IF(L(6*J5-25))GO TO 38
      WRITE(6,105)
      GO TO 39
   38 WRITE(6,104)
   39 WRITE(6,700)L(6*J5-25),T4
      T5=(DB.GT.DA).OR.(DC.EQ.(5.0-5.0))
      L(1)=(DB.GT.DA).OR.(DC.EQ.(5.0-5.0))
      L(1*J2)=(DB.GT.DA).OR.(DC.EQ.(5.0-5.0))
      L(J1+2)=(DB.GT.DA).OR.(DC.EQ.(5.0-5.0))
      L(2*J3-2)=(DB.GT.DA).OR.(DC.EQ.(5.0-5.0))
      LD=(DB.GT.DA).OR.(DC.EQ.(5.0-5.0))
      IF(L1)GO TO 40
      WRITE(6,103)J5
      GO TO 41
   40 WRITE(6,102)J5
   41 WRITE(6,700)L(1),T5
      IF(L(1*J2))GO TO 42
      WRITE(6,105)
      GO TO 43
   42 WRITE(6,104)
   43 WRITE(6,700)L(1*J2),L(1)
      IF(L(J1+2))GO TO 44
      WRITE(6,105)
      GO TO 45
   44 WRITE(6,104)
   45 WRITE(6,700)L(J1+2),T5
      IF(L(2*J3-2))GO TO 46
      WRITE(6,105)
      GO TO 47
   46 WRITE(6,104)
   47 WRITE(6,700)L(2*J3-2),T5
      IF(LD)GO TO 48
      WRITE(6,105)
      GO TO 49
   48 WRITE(6,104)
   49 WRITE(6,700)L(6*J5-25),T5
      WRITE(6,999)
      STOP
      END
