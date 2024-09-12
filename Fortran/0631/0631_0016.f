      REAL A(10,-5:-2)/40*0.0/
      REAL B(10,10)/100*0.0/
      REAL C(25002,-5:-2)/100008*0.0/
      REAL D(25002,5)/125010*0.0/
      REAL E(-5:-2,10)/40*0.0/
      REAL F(-5:-2,25002)/100008*0.0/
      REAL G(5,25002)/125010*0.0/
      DO 10 I=-4,-3
        DO 10 J=1,9
          A(J,I)=1.0
   10 CONTINUE
      DO 20 I=1,9
        DO 20 J=10,2,-1
          B(J,I)=B(J,I)+2.0
   20 CONTINUE
      DO 30 I=-4,-3
        DO 30 J=1,25001
          C(J,I)=C(J,I)+2.0
   30 CONTINUE
      DO 40 I=4,1,-1
        DO 40 J=1,25001
          D(J,I)=D(J,I)+2.0
   40 CONTINUE
      DO 50 I=1,9
        DO 50 J=-4,-3
          E(J,I)=1.0
   50 CONTINUE
      DO 60 I=10,2,-1
        DO 60 J=1,9
          B(J,I)=B(J,I)+2.0
   60 CONTINUE
      DO 70 I=1,25001
        DO 70 J=-4,-3
          F(J,I)=F(J,I)+2.0
   70 CONTINUE
      DO 80 I=1,25001
        DO 80 J=4,1,-1
          G(J,I)=G(J,I)+2.0
   80 CONTINUE
      WRITE(6,*) A(1,-5),A(10,-2)
      WRITE(6,*) B(1,1),B(10,10)
      WRITE(6,*) C(1,-5),C(25002,-5)
      WRITE(6,*) D(1,5),D(25002,1)
      WRITE(6,*) E(-5,1),E(-2,10)
      WRITE(6,*) F(-5,1),F(-2,10)
      WRITE(6,*) G(5,1),G(1,25002)
      END
