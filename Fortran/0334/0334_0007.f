
      INTEGER N, SUM
      DOUBLE PRECISION  ANS
      PARAMETER (N=1200000)
      PARAMETER (ANS=12000)
      DOUBLE PRECISION  A(1:N)
      DOUBLE PRECISION  B(1:N)

      A=0.1
      B=A
      SUM = NINT(DOT_PRODUCT(A,B))

      IF (SUM == ANS) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG'
      END IF

      END
