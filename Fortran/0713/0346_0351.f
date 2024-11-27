          REAL Y(10),X(10)
          COMMON /BLK1/ A(10),E(10),F(10)
          REAL B(10),D(10)
          DATA B/10*1./
          DATA D/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA X,Y/20*2./
          DO 1 I = 1 , 10
            IF( D(I) .LE.  9.0 ) X(I) = A(I) + B(I)
            IF( D(I) .LE.  9.0 ) Y(I) = A(I) + B(I)
            IF( D(I) .LE.  8.0 ) X(I) = E(I) - F(I)
            IF( D(I) .LE.  8.0 ) Y(I) = E(I) - F(I)
            IF( D(I) .LE.  7.0 ) X(I) = F(I) * A(I)
            IF( D(I) .LE.  7.0 ) Y(I) = F(I) * A(I)
            IF( D(I) .LE.  6.0 ) X(I) = E(I) / B(I)
            IF( D(I) .LE.  6.0 ) Y(I) = E(I) / B(I)
 1        CONTINUE
          PRINT *,X,Y
          END
          BLOCK DATA
          COMMON /BLK1/ A(10),E(10),F(10)
          DATA A,E,F/30*2./
          END
