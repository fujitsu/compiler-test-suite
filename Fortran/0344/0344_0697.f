      REAL*4 A(10),B(10)
      DATA A/3*2.0,3*3.0,4*0.0/
      DATA B/5*1.0,5*0.0/
C
      X=0.0
      Y=0.0
C
      DO 10 I=1,10
       A(I)=B(I)+2
       IF(A(I).GT.X) THEN
        X=A(I)
        Y=B(I)
       ENDIF
  10  CONTINUE
C
      WRITE(6,*) X,Y
      WRITE(6,*) A(1)
      STOP
      END
