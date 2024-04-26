      DIMENSION A(10),B(10)
      DATA A/1.0,2.0,3.0,4.0,5.0,4.0,5.0,2.0,1.0,0.0/
      DATA B/1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0,100.0/
C
      X=0.0
      S=0.0
      DO 10 I=1,10
       S=B(I)+2.0
       IF(A(I).GT.X) THEN
        X=A(I)
        Y=SQRT(B(I))
       ENDIF
  10  CONTINUE
C
      WRITE(6,*) X,Y
      STOP
      END
