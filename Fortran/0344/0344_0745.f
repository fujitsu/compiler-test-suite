      REAL A(10)/10*1./,B(10)/10*0./,C(10,10)
      DO 10 I=1,10
       K=0
       DO 20 J=1,10
        IF(I.EQ.5) THEN
         K=K+1
         B(K)=A(J)
        ENDIF
   20  CONTINUE
       DO 10 J=1,10
        C(I,J)=B(I)
   10 CONTINUE
      WRITE(6,1000) C
 1000 FORMAT(1X,10F7.2)
      STOP
      END
