      DO 10 I=1,100
        S=I+1
 10   CONTINUE
      A=S
      WRITE(6,1000) A
      WRITE(6,1000) S
 1000 FORMAT(F6.1)
      STOP
      END
