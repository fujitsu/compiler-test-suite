      PROGRAM MAIN
      IMPLICIT REAL*4(A-H,O-Z)
      PARAMETER ( ME =17000000, MP = 3000000, N = 4 )
      PARAMETER (MCOM = 10 ,NE=10)
      IP=5
      IPF=6
      NP=7

      DO 130 IE = 1 , NE
          DO 120 I = 1 , N
              IF(IP.LT.1 .OR. IP.GT.NP) THEN
                  WRITE(IUT6,*) '   IE=',IE,'  I=',I,'  IP =',IP
                  STOP
              ENDIF
              DO 110 J = I+1 , N
                  IF(IPF.EQ.IP) THEN
                     STOP
                  ENDIF
  110         CONTINUE
  120     CONTINUE
  130 CONTINUE
      write(6,*) ' OK '
      STOP
      END
