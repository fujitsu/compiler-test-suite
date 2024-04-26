      REAL*4 A1(10)/10*60/,B1(10),SB1/0./
      REAL*8 A2(10)/10*90/,B2(10),SB2/0./
      COMPLEX*8 A3(10)/10*(30.,0.)/,B3(10),SB3/(0.,0.)/
      COMPLEX*16 A4(10)/10*(60.,0.)/,B4(10),SB4/(0.,0.)/
      DO 1 I=1,10
       B1(I) = COS(A1(I))
       B2(I) = COS(A2(I))
       B3(I) = COS(A3(I))
    1  B4(I) = COS(A4(I))
      DO 2 I=1,10
       SB1 = SB1 + B1(I)
       SB2 = SB2 + B2(I)
       SB3 = SB3 + B3(I)
    2  SB4 = SB4 + B4(I)
      IF (ABS(SB1+9.52412987)>9.6E-7) WRITE(6,*) SB1
      IF (ABS(SB2+4.480736161291701)>9.5E-8) WRITE(6,*) SB2
      IF (ABS(SB3-(1.54251456,0.0))>1.0E-6) WRITE(6,*) SB3
      IF (ABS(SB4-(-9.524129804151562,0.0))>6.4E-8) WRITE(6,*) SB4
      WRITE(6,*) '*** OK ***'
      STOP
      END
