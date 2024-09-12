      REAL*8  A(100),B(100),C(100),D(100)
      D(100) = 1
      DO 10 I=1,100,2
       A(I)=1.5
       A(I+1)=2.5
       B(I)=-1
       B(I+1)=2.
       C(I)=0.
  10   C(I+1)=-10
      DO 20 I=1,99
       D(I)=A(I)*B(I)
  20   A(I+1)=D(I)/(C(I)+1)
      WRITE(6,*) I
      AMX=0
      DO 30 I=1,99
       IF(AMX.LT.D(I)+B(I+1)) THEN
        AMX=D(I)+B(I+1)
        J=I
       ENDIF
       C(I+1)=C(I)*D(I)*A(I)
  30  CONTINUE
      WRITE(6,*) AMX,J
      DO 40 I=1,99
       IF(AMX.LT.D(I)+B(I+1)) THEN
        AMX=D(I)+B(I+1)
       ENDIF
       C(I+1)=C(I)*D(I)*A(I)
  40  CONTINUE
      WRITE(6,*) AMX
      DO 50 I=1,99
       D(I)=A(I)*(B(I)-1)
       A(I+1)=(D(I)-1+I)/(C(I)+1)
  50   D(100)=D(100)+A(10)
      WRITE(6,*) I
      WRITE(6,*) A,B,C,D
      END
