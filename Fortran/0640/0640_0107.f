      PROGRAM MAIN
      LOGICAL *4   LV11(10),LV12(10)/5*.TRUE.,5*.FALSE./
      INTEGER *4   IV11(10)/1,2,3,4,5,6,7,8,9,10/
      REAL    *4   RS11/0.0/
      COMPLEX *16  CDV11(10)/5*(1.,0.),5*(0.5,0.5)/
      INTEGER *4   IS22/-10/,IS21,IV21(10)/3,5*-1,0,0,3,2/,
     &             IV22(10)/10*3/,IS23/4/
      LOGICAL *4   LS31,LS32/.FALSE./
      REAL    *4   RV31(10)/3*4.0,5*-1.,2*5./,RV32(10)/10*1.0/,
     &             RS31/10/,RS32/3./
      REAL    *8   DS31/4./,DV31(10)/2*8.,8*4./

        CS11 = 1
      DO 100  I=1,10
        CS11 = I + CS11
        LV11(I) = I.LT.3.OR.7.LT.I
   11   IV11(1) = I +IV11(I) + IV11(1)
        LV12(I) = LV11(I).NEQV.LV12(I)
        CDV11(I)= RS11 - CDV11(I)
  100 CONTINUE
      WRITE(6,*) CS11
      WRITE(6,*) LV11
      WRITE(6,*) LV12
      WRITE(6,*) IV11
      WRITE(6,1) CDV11

      DO 200  I=1,10
        IS21 = IV21(I) - IS22
        IF (0.LE.IS21)  IS22 = IV21(I)
        IF (IV21(I))  21,22,23
   21     IV22(I) = IS23 + IV22(I)
          GO TO 200
   22     IV22(I) = IS23 - IV22(I)
          GO TO 200
   23     IV22(I) = IS23 * IV22(I)
  200 CONTINUE
      WRITE(6,*) IS22,IV21
      WRITE(6,*) IV22
      DO 300  I=1,10
        DV31(I) = RV31(I) +(DPROD(RV31(I),RV31(I)) * RV32(I) / DV31(I)
     &         + DPROD(RV31(I),RS32)/DS31 - DPROD(RS31,REAL(DV31(I))))
        LS31    = DV31(I).GT.3.0
        IF (LS31.EQV.LS32)  RV31(I) = 3.0
        RV32(I) = DV31(I) - RV31(I)
  300 CONTINUE
      WRITE(6,*) DV31
      WRITE(6,*) RV31
      WRITE(6,*) RV32
 1    format(5("(",f6.2,",",f6.2,")") )
      STOP
      END
