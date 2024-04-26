      REAL*4 A1(10)/10*60/,B1(10),SB1/0./
      REAL*8 A2(10)/10*90/,B2(10),SB2/0./
      COMPLEX*8 A3(10)/10*30/,B3(10),SB3/(0.,0.)/
      COMPLEX*16 A4(10)/10*(60.,0)/,B4(10),SB4/(0.,0.)/
      DO 1 I=1,10
       B1(I) = SIN(A1(I))
       B2(I) = SIN(A2(I))
       B3(I) = SIN(A3(I))
    1  B4(I) = SIN(A4(I))
      DO 2 I=1,10
       SB1 = SB1 + B1(I)
       SB2 = SB2 + B2(I)
       SB3 = SB3 + B3(I)
    2  SB4 = SB4 + B4(I)
      IF (ABS(SB1+3.04810596)>1.0E-6) WRITE(6,*) 'B1=',B1
      IF (ABS(SB2-8.939966636005579)>4.4E-7) WRITE(6,*) 'B2=',B2
      IF (ABS(SB3-(-9.88031483,0.0))>2.0E-6) WRITE(6,*) 'B3=',B3
      IF (ABS(SB4-(-3.048106211022166,0.0))>1.8E-8) WRITE(6,*) 'B4=',B4
      WRITE (6,*) '*** OK ***'
      STOP
      END
