      REAL A(10)/10*0/
      REAL B(10)/10*2/
      REAL C(10)/10*2/
      INTEGER M/5/
      DO 10 I=1,10
        A(I)=B(I)+M
        C(I)=B(I)+10
        B(I)=A(I)+C(1)
   10 CONTINUE
      WRITE(6,100) A,B,C
  100 FORMAT (5F10.5)
      END
