      COMMON /BLK/N
      INTEGER*4 A(10,10),B(10)/1,2,3,4,5,6,7,8,9,10/
      INTEGER*4 C(10)/1,3,5,7,9,2,4,6,10,12/
      IS=0
      DO 2  J=1,10
      DO 10 I=1,10
      A(I,J)=I*J
10    CONTINUE
      DO 2 I=1,10
      B(I)=1+C(I)+I
2     C(I)=0
      DO 20 J=1,10
      DO 20 I=1,10
      IS=IS+1
20    A(I,J)=C(I)+7.0
      N=10
      WRITE(6,*) N,B,C,A
      STOP
      END
