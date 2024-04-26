      REAL A(10)/1,2,3,4,5,6,7,8,9,10/,B(10)/10*2/,C(10)/10*1/
      T=0
      DO 1 I=2,9
      IF(I.GT.8)
     +T   =SQRT(C(I))
      C(I)=T   +1
1     CONTINUE
      K=1
      J=1
      DO 2 I=1,10
      IF(I.GT.5) THEN
      C(J)=A(I)
      J=J+1
      ELSE
      A(I)=B(K)
      K=K+1
      ENDIF
2     CONTINUE
      WRITE(6,*) A,B,C
      STOP
      END
