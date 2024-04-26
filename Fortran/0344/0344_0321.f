      REAL*4 A(50)
      DATA M/50/
      A(1) = 1.0
      A(2) = 1.0
      DO 10 I=3,M
         A(I) = FLOAT(I)
         IF(A(I).GT.M/2) THEN
            A(I) = A(I) + FLOAT(M)
            A(I) = A(I-2) - FLOAT(M)
         ENDIF
         A(I) = A(I) * FLOAT(M/11)
         A(I) = A(I-2) * FLOAT(M/12)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
