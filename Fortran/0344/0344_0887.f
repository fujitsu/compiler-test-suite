      INTEGER M(5000)
      LOGICAL L(5000)/5000*.FALSE./
      N = 1
      m = (/(i,i=1,5000)/)
      DO 10 I=1,5000
       M(I)=I
       L(5001-I)=.TRUE.
        DO 20 J=1,5000
         IF(L(J)) GOTO 30
          N=M(J)
   20   CONTINUE
   30  M(I)=N
   10 CONTINUE
      WRITE(6,1000) (M(i),i=1,5000,100)
 1000 FORMAT(10(1X,I7))
      STOP
      END
