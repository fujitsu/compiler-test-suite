      REAL S/1.0/
      DO 10 I=1,100
 10    S=S+1
      WRITE(6,1000) S
 1000 FORMAT(F10.5)
      END
