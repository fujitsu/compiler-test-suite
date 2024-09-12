       REAL*8    F(700),U(700)
       DATA  AR2/1./,J/1/,LOOP/50/,N1/1/,N2/100/,N11/10/
       DO 10 I=1,700
        F(I) = I
        U(I) = I
   10 CONTINUE

       DO 50 I=1,LOOP
         R   =  FLOAT(I)
         Z   =  FLOAT(J)
         RO2 = R*Z
         IF(RO2 .GT. AR2)  THEN
           I2  = I+N1*J
           I3  = I2 + N2
           I4  = I3 + N2
           I5  = I4 + N2
           X2  = RO2/AR2-1.0
           X2  = X2*X2
           X2  = X2/(X2+1.0)
           U(I2) = U(I2)*X2
           U(I3) = U(I3)*X2
           U(I4) = U(I4)*X2
           X2    = F(I2+N11)+F(I2+1)-F(I2+N1)-F(I2)
           U(I5) = U(I5)*X2
         ENDIF
   50  CONTINUE
       PRINT  *,U
       END
