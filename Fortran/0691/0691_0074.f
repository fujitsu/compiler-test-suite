      LOGICAL L,T,F
      INTEGER*2  IA(10),IB(10)
      T   =.TRUE.
      F   =.FALSE.
      WRITE(6,600)
      WRITE(6,601)
  600 FORMAT(1H1 / 6X,25H*FORTRAN*          ENTER  /)
  601 FORMAT(1H0 / 10X,41H- JUSTICE -     - ITEM -       - COMPUTED
     *35H RESULT -        - COMPARE VALUE -  /)
  602 FORMAT(1H0, 12X, 7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6 )
  603 FORMAT(1H0, 12X, 4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6 )
  604 FORMAT(1H0 / 6X,24H*FORTRAN*          EXIT  )
      DO 50 I=1,10
      IA(I) =I+300
   50 CONTINUE
      DO 60 M=1,10
      IB(M) =M-300
   60 CONTINUE
      RA    =1.234E01
      RB    =-1.234E01
      ITM=0
      L   =IA(1).GT.RB
      GO TO 900
C
    2 L   =IA(1).GT.IA(1)
      GO TO 901
C
    3 L   =RB.GT.IA(1)
      GO TO 901
C
    4 L   =IB(1).GT.150/3.0+0.12993
      GO TO 901
C
    5 L   =150/3.0+0.12993.GT.IB(1)
      GO TO 900
C
    6 L   =IA(2).GE.RA
      GO TO 900
C
    7 L   =RA.GE.IA(2)
      GO TO 901
C
    8 L   =RA.GE.RA
      GO TO 900
C
    9 L   =IB(2).GE.3*4.0/2-RA
      GO TO 901
C
   10 L   =3*4.0/2-RA.GE.IB(2)
      GO TO 900
C
   11 L   =3*4.0/2-RA.GE.3*4.0/2-RA
      GO TO 900
C
   12 L   =IB(3).LT.RA
      GO TO 900
C
   13 L   =RA.LT.IB(3)
      GO TO 901
C
   14 L   =IB(3).LT.IB(3)
      GO TO 901
C
   15 L   =IB(3).LT.123.4*10+IA(10)/1.1236E01
      GO TO 900
C
   16 L   =123.4*10+IA(10)/1.1236E01.LT.IB(3)
      GO TO 901
C
   17 L   =IA(3)+IA(9).LE.2.036E35+18/RB+IA(5)
      GO TO 900
C
   18 L   =2.036E35+18/RB+IA(5).LE.IA(3)+IA(9)
      GO TO 901
C
   19 L   =18/RB+IA(5).LE.18/RB+IA(5)
      GO TO 900
C
   20 L   =IB(4).LE.RA
      GO TO 900
C
   21 L   =RA.LE.IB(4)
      GO TO 901
C
   22 L   =IA(4).EQ.RB
      GO TO 901
C
   23 L   =RB.EQ.IA(4)
      GO TO 901
C
   24 L   =RA.EQ.12.340
      GO TO 900
C
   25 L   =IB(10).EQ.100+190.0
      GO TO 901
C
   26 L   =IA(6)+IB(5).EQ.2+3/1.0+12/0.2E01
      GO TO 900
   27 WRITE(6,605)
C
      L   =IB(6).EQ.IA(8)+0.691E21/9990.999
      GO TO 901
C
   28 L   =IA(7).NE.RB
      GO TO 900
C
C
   29 L   =RB.NE.IA(7)
      GO TO 900
C
   30 L   =RB.NE.RB
      GO TO 901
C
   31 L   =IA(6).NE.2.5*4-RA+IB(7)/3.14E-20
      GO TO 900
C
   32 L   =IB(8)+20/3.0+RA.NE.IA(10)
      GO TO 900
  900 ITM =ITM+1
      IF(L) GO TO 700
      GO TO 701
  901 ITM =ITM+1
      IF(L) GO TO 702
      GO TO 703
  700 WRITE(6,603)ITM, L, T
      GO TO 1000
  701 WRITE(6,602)ITM, L, T
      GO TO 1000
  702 WRITE(6,602)ITM, L, F
      GO TO 1000
  703 WRITE(6,603)ITM, L, F
 1000 GO TO (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,
     * 23,24,25,26,27,28,29,30,31,32,33),ITM
   33 WRITE(6,604)
  605 FORMAT(1H1 ///// 10X,41H- JUSTICE -     - ITEM -       - COMPUTED
     *35H RESULT -        - COMPARE VALUE -  /)
      STOP
      END
