      INTEGER N(100)
      EQUIVALENCE (K,M)
      M=0
      DO 10 I=1,100
        K=I
        N(I)=100/I
 10   CONTINUE
      WRITE(6,1001) N
      IF(N(1).EQ.0) THEN
       WRITE(6,1000) M
      ENDIF
 1000 FORMAT(I10)
 1001 FORMAT(10I7)
      STOP
      END
