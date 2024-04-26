      PROGRAM MAIN
      REAL*8 C/0.0/
C
      
      DO 10 I=1,10
        C=REAL(I)+C
        IF (I.LE.5) THEN
          DO 20 J=1,10
            DO 20 M=1 ,10
              C=C/M/J+C
   20     CONTINUE
        ELSE
          DO 30 J=10,2,-1
              C=J/J*I
   30     CONTINUE
          DO 40 M=10,2,-1
              C=(M*M/C)/C+J
   40     CONTINUE
        ENDIF
        WRITE(6,1) C
   10 CONTINUE
    1 FORMAT(D15.8)
C
      STOP
      END
