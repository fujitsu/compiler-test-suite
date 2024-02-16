      INTEGER    N
      PARAMETER (N=50)
      PARAMETER (ANS=1275.0)
      PARAMETER (ERROR=0.000001)
      REAL       Q

      Q = 0.0
      DO 20 I=1, N
         Q = Q + I
 20      CONTINUE
      CLOSE(20)

      IF ((Q-ANS)<ERROR) THEN
        PRINT *,"OK"
      ELSE
        PRINT *,"NG : ",Q
      ENDIF

      END
