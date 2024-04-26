      INTEGER*4  I400A(10),I400B(10)
      DATA       I400A/10*0/
      DATA       I400B/10*1/
C
      N=9
      DO 10 I=1,N
        I400A(3)=I
        I400B(I)=I400A(5)
   10 CONTINUE
      WRITE(6,*) I400A
      WRITE(6,*) I400B
      STOP
      END
