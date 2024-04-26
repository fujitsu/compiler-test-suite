      PROGRAM MAIN
      REAL*4 WVARI(10),BHP(10),WVRI1,WVRI2
      DATA WVARI/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      data bhp/1,2,3,4,5,6,7,8,9,10/
C
      DO 10 I=1,9
         WVRI1    = WVARI(I)
         WVRI2    = WVARI(I+1)
         WVARI(I) = ( WVRI1 + WVRI2 ) / 2
         BHP(I)   = WVARI(I) * WVRI1
   10 CONTINUE
C
      WRITE(6,100) BHP
  100 FORMAT(1H ,10F7.3)
      STOP
      END
