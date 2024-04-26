      REAL*4 A(20,20),B(20,20),C(20),D(20)
      DATA  A/400*1./,B/400*3./
      DATA  C,D/40*2./
      LOGICAL*4 L(20)
      DATA  L/10*.FALSE.,10*.TRUE./
      DO 10 I=1,20
        C(I)=C(I)*D(I)
        T1=C(I)**2
        DO 20 J=2,20
          A(I,J)=A(J,I)+B(J,I)*FLOAT(J)
  20    CONTINUE
        D(I)=T1+A(I,2)*B(1,I)
        IF (L(I)) THEN
          T1=T1+C(I)
        ENDIF
        DO 30 J=2,20
          A(J,I)=A(I,J)+B(I,J)*T1
  30    CONTINUE
        D(I)=D(I)+SQRT(C(I))
  10  CONTINUE
      WRITE(6,*) A
      STOP
      END
