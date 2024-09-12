      REAL     A(11),B(11),Y1(11),W1(11)
      REAL     D(11)
      REAL     Y2(11),W2(11)
      DATA     A,B/11*1.0,11*0.5/
      DATA     D    /1.,10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA     Y1,W1  /11*2.0,11*1.0/
      DATA     Y2,W2  /11*0.5,11*2.0/

      DO 10 I = 1 , 10
       IF( D(I) .LE. 7.0 )
     E     Y1(I) = A(I) + B(I)
       IF( D(I) .LE. 3.0 )
     E     W1(I) = A(I) - B(I)
       IF( D(I) .LE. 7.0 )
     E     Y2(I) = A(I) + B(I)
       IF( D(I) .LE. 3.0 )
     E     W2(I) = A(I) - B(I)
   10 CONTINUE
      PRINT  *,Y1,Y2,W1,W2
      STOP
      END
