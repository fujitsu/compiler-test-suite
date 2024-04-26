      INTEGER N(10)/1,2,3,4,5,6,7,8,9,10/
      LOGICAL L(10)/9*.FALSE.,.TRUE./
      DO 10 I=1,10
       IF(I.EQ.10) GOTO 20
   20   IF(L(I)) GOTO 30
        N(I)=MOD(N(I),2)
   10  CONTINUE
   30  WRITE(6,1000) N
 1000 FORMAT(10(1X,I7))
      STOP
      END
