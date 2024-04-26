      INTEGER A(10)/10*0/
      INTEGER B(10)/10*0/
      INTEGER C(10)/10*2/
      INTEGER D(10)/10*3/
      DO 10 I=1,10
        A(I)=C(I)+D(I)
        B(I)=A(I)+I
   10 CONTINUE
      WRITE(6,100) B
  100 FORMAT (5I10)
      STOP
      END
