      REAL*4 A(20),B(20),C(20),D(20)
      LOGICAL*4 L(20)
      DATA  A,B,C/60*1./,D/20*2./
      DATA  L/10*.FALSE.,10*.TRUE./
      DO 20 J=2,19
        T1=A(J+1)*D(J)
        T2=A(J)*D(J+1)
        T3=SQRT(T1+T2)
        IF (L(J)) THEN
          DO 10 I=1,20
            T4=T3*B(I)+C(I)
            T5=T3*C(I)+B(I)
            B(I)=T3+T4+D(I)
  10      CONTINUE
        ENDIF
  20  CONTINUE
      WRITE(6,*) B
      STOP
      END
