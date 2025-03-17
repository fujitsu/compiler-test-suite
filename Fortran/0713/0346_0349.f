          REAL Y(10),X(10)
          REAL A(10),B(10),D(10)
          DATA A,B/20*1./
          DATA D/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA X,Y/20*2./
          DO 1 I = 1 , 10
            IF( D(I) .LE.  0.0 ) X(I) = A(I) + B(I)
            IF( D(I) .LE.  0.0 ) Y(I) = A(I) + B(I)
 1        CONTINUE
          PRINT *,X,Y
          END
