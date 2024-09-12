      PARAMETER (N=10)
      REAL*8 A(N),B(N),C(N),D(N)
      INTEGER L(N)
      LOGICAL*4 M(N)
      DATA A/10*2.0/,C/10*9.0/,L/10*6/,M/10*.FALSE./
      DATA B/10*0.0/
      RC=4.6
      DO 10 I=1,N
      IF(M(I))  B(I)=C(L(I))
      D(1)=A(I)
      IF(RC.LE.10.0)THEN
      D(I)=C(I)
      ENDIF
   10 CONTINUE
      PRINT *,B
      STOP
      END
