      REAL     A(11),B(11),C(11),E(11)
      REAL     Y1(11),Y2(11),Y3(11),Y4(11)
      REAL     D(11)
      DATA     A,B/11*1.0,11*0.5/
      DATA     C,E/11*2.0,11*1.0/
      DATA     D    /1.,10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA     Y1,Y2  /11*2.0,11*1.0/
      DATA     Y3,Y4  /11*0.5,11*2.0/

      DO 10 I = 1 , 10
       IF( D(I) .LE. 9.0 ) Y1(I) = A(I) + B(I)
       IF( D(I) .LE. 9.0 ) Y1(I) = A(I) + B(I)
       IF( D(I) .LE. 7.0 ) Y2(I) = C(I) - E(I)
       IF( D(I) .LE. 7.0 ) Y2(I) = C(I) - E(I)
       IF( D(I) .LE. 5.0 ) Y3(I) = A(I) * B(I)
       IF( D(I) .LE. 5.0 ) Y3(I) = A(I) * B(I)
       IF( D(I) .LE. 3.0 ) Y4(I) = C(I) / E(I)
       IF( D(I) .LE. 3.0 ) Y4(I) = C(I) / E(I)
   10 CONTINUE
      PRINT  *,Y1,Y2,Y3,Y4
      STOP
      END
