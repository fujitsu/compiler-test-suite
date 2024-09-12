      PARAMETER (N=10)
      REAL*8 A(N),B(N),C(N),X(N),Y(N),Z(N)
      DATA RC/6.0/,X/N*1.2/,Y/N*0.5/,Z/N*5.3/
      RC=1.0
      DO 10 I=1,N
      A(I)=I+1.2
      B(I)=I-0.9
      C(I)=SQRT(REAL(I))+0.01
      IF(RC.LT.5.0) THEN
       V1=X(I)
       V2=Y(I)
       V3=Z(I)
       C(I)=A(I)+B(I)
       B(I)=A(I)*C(I)
       A(I)=B(I)-C(I)
      GO TO 100
      ENDIF
      A(I)=X(I)
      B(I)=Y(I)
      C(I)=Z(I)
  100 CONTINUE
      X(I)=A(I)*B(I)
      Y(I)=B(I)+C(I)
      Z(I)=A(I)/C(I)
   10 CONTINUE
      PRINT *,A,B,C,X,Y,Z,V1,V2,V3
      STOP
      END
