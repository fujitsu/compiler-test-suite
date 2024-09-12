      COMPLEX  C1(10),CS1
      REAL     R1(10),R2(10),RR1,RI1
      DATA     R1,R2/20*1./
      DATA     C1/10*(0.5,0.5)/
      LOGICAL  L1(10)/5*.TRUE.,5*.FALSE./
      LOGICAL  L2(10)/5*.FALSE.,5*.TRUE./

      DO 10 I=1,10
        CS1   = CSIN(C1(I))
        RR1   = REAL(CS1)
        RI1   = IMAG(CS1)
        IF(L1(I)) THEN
          RI1 = R1(I) + R2(I)
         ENDIF
        IF(L2(I)) THEN
          RI1 = RI1 + RR1
         ENDIF
        R1(I) = RI1 + IMAG(CS1)
   10 CONTINUE

      WRITE(6,100) R1
  100 FORMAT(' ',F15.5)
      END
