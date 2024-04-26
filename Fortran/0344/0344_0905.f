      INTEGER N(10)/1,2,3,4,5,6,7,8,9,10/
      DO 10 I=1,9
       IF(I.EQ.10) GOTO 20
       IF(N(I+1).LT.7) THEN
        N(I)=I*N(I)
       ELSE
        N(I)=0
       ENDIF
   10  CONTINUE
   20  WRITE(6,1000) N
 1000 FORMAT(10(1X,I7))
      STOP
      END
