      REAL A1(10),A2(10),A3(10)
      REAL B1(10),B2(10),B3(10)
      DATA A1/10*6.9/,A2/10*-9.5/,A3/10*4.3/
      DO 10 I=1,10
      X=A3(I)
      IF(X.LT.10.0)THEN
       X=A1(I)-1.0
      ENDIF
      A1(I)=A2(I)-9.9
      B1(I)=I
      B2(I)=B1(I)*5.8
      B3(I)=B2(I)-0.00001
      A2(I)=X
   10 CONTINUE
      PRINT *,A1,A2,X,B1,B2,B3
      STOP
      END
