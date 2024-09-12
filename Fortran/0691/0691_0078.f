      LOGICAL      L,T,F
      INTEGER*2   IA, IB, IC
      INTEGER*4   IX, IY, IZ
      REAL   *8   RA, RB, RC
      DIMENSION     X(5)
      DIMENSION     I(3)
      DATA     T,      F  / .TRUE. , .FALSE. /,
     *         IA, IB, IC /  250, 1200, -500 /,
     *         IX, IY, IZ / 32768, -32769, 4748367 /,
     *         RA, RB, RC / 998.9D06, 1.656D20, -4.2863D05 /
      WRITE(6,600)
      WRITE(6,601)
  600 FORMAT(1H1 / 6X,25H*FORTRAN*          ENTER  /)
  601 FORMAT(1H0 / 10X,41H- JUSTICE -     - ITEM -       - COMPUTED ,
     *      35H RESULT -        - COMPARE VALUE -  /)
  602 FORMAT(1H0, 12X, 7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6 )
  603 FORMAT(1H0, 12X, 4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6 )
  604 FORMAT(1H0 / 6X,24H*FORTRAN*          EXIT  )
      ITM =0
      L   =IA+9-RC.GT.IY*4.5/2**10-2.836E05
      GO TO 900
C
    2 L   =10E02/1.0+0.5*RA.GT.3.29E01*(-10)/IA
      GO TO 900
C
    3 L   =IX+3200.GT.IX+3201
      GO TO 901
C
    4 L   =1234+660.0*0.999D01.GT.2.5*4*3.8D09/0.246E05
      GO TO 901
C
    5 L   =3.14*5/IB+4**5.GT.222+RA*(-5.0E04)-IB
      GO TO 900
C
    6 L   =222+RA*(-5.0E04)-IB.GT.3.14*5/IB+4**5
      GO TO 901
C
    7 L   =RC/450*20.5+(2.8-1.5).GT.(IA+4.1E01/350*30)*RB
      GO TO 901
C
    8 L   =(IA+4.1E01/350*30)*RB.GT.RC/450*20.5+(2.8-1.5)
      GO TO 900
C
    9 L   =IB+20/3.0+RA.GE.2.5*4-RC+IC/3.478E-20
      GO TO 900
C
   10 L   =2.5*4-RC+IC/3.478E-20.GE.IB+20/3.0+RA
      GO TO 901
C
   11 L   =IX*2+RA*2.GE.IX*2+RA*2
      GO TO 900
C
   12 L   =7.789E05+5**3*IZ.GE.2.036E02*IC+(-4)**5
      GO TO 900
C
   13 L   =2.036E02*IC+(-4)**5.GE.7.789E05+5**3*IZ
      GO TO 901
C
   14 L   =999.999/0.691E02+IA/5.0.GE.IC*40/30+8**4*RC
      GO TO 900
C
   15 L   =IC*40/30+8**4*RC.GE.999.999/0.691E02+IA/5.0
      GO TO 901
C
   16 L   =IA*3+IX*2+RC*4.GE.IX*2+RC*4+IA*3
      GO TO 900
C
   17 L   =IC/100+IY**3.LT.IA**0.5+3259.3+RB*2
      GO TO 900
C
   18 L   =IA**0.5+3259.3+RB*2.LT.IC/100+IY**3
      GO TO 901
C
   19 L   =3.8*IB/2+2.942D03.LT.IC*(IZ/18+2.858E04+3**3)
      GO TO 901
C
   20 L   =IC*(IZ/18+2.858E04+3**3).LT.3.8*IB/2+2.942D03
      GO TO 900
C
   21 L   =IA.LT.251.0
      GO TO 900
C
   22 L   =IY+IC.LT.-33270.0
      GO TO 901
C
   23 L   =45*5.0**2+IZ.LT.IA*300/20+RC
      GO TO 901
C
   24 L   =IA*300/20+RC.LT.45*5.0**2+IZ
      GO TO 900
C
   25 L   =IA.LE.IX
      GO TO 900
C
   26 L   =IZ*2.0D05.LE.IZ*2.1D05
      GO TO 900
   27 WRITE(6,605)
C
      L   =IA+IY+RC.LE.RC+IY+IA
      GO TO 900
C
   28 L   =5.1+4.9*2.LE.IB+RA/2
      GO TO 900
C
   29 L   =IB+RA/2.LE.5.1+4.9*2
      GO TO 901
C
   30 L   =30*2+1250+IX.LE.RC*(222+0.05*1.0E03/50)
      GO TO 901
C
   31 L   =RC*(222+0.05*1.0E03/50).LE.1250+30*2+IX
      GO TO 900
C
   32 L   =-3.5E03*1/2**10.LE.IB*20+3520/10+IZ
      GO TO 900
C
   33 L   =IA.EQ.250
      GO TO 900
C
   34 L   =RC.EQ.-4.2864D05
      GO TO 901
C
   35 L   =IZ.EQ.474836.8E01
      GO TO 901
C
   36 L   =RA+IY+200.EQ.200+IY+RA
      GO TO 900
C
   37 L   =111.1E-01+125/5.0.EQ.IA/3+3**3+RC
      GO TO 901
C
   38 A   =181.75
      B   =-759.27
      K   =4801
      L   =A.EQ.181.75
      GO TO 900
C
   39 L   =B.EQ.-759.27
      GO TO 900
C
   40 L   =K.EQ.4801
      GO TO 900
C
   41 I(1)=250
      I(2)=1200
      I(3)=-500
      L   =I(1).NE.IA
      GO TO 901
C
   42 L   =I(2).NE.IB
      GO TO 901
C
   43 L   =I(3).NE.IC
      GO TO 901
C
   44 X(1)=662.62
      X(2)=740.61E03
      X(3)=44.701E-25
      X(4)=-173.24
      X(5)=-12.599E-03
      L   =X(1).NE.662.62
      GO TO 901
C
   45 L   =X(2).NE.740.61E03
      GO TO 901
C
   46 L   =X(3).NE.44.701E-25
      GO TO 901
C
   47 L   =X(4).NE.-173.24
      GO TO 901
C
   48 L   =X(5).NE.-12.599E-03
      GO TO 901
  900 ITM =ITM+1
      IF (L) GO TO 700
      WRITE(6,602)ITM, L, T
      GO TO 1000
  700 WRITE(6,603)ITM, L, T
      GO TO 1000
  901 ITM =ITM+1
      IF (L) GO TO 702
      WRITE(6,603)ITM, L, F
      GO TO 1000
  702 WRITE(6,602)ITM, L, F
 1000 GO TO (2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,
     *      23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,
     *      42,43,44,45,46,47,48,49 ),ITM
   49 WRITE(6,604)
  605 FORMAT(1H1 /////  10X,40H- JUSTICE -     - ITEM -      - COMPUTED
     *      35H RESULT -        - COMPARE VALUE -  /)
  500 FORMAT( 2F10.2 ,I5)
  501 FORMAT(3I5)
  502 FORMAT(5E14.7)
      STOP
      END
