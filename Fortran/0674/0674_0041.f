      PROGRAM MAIN
      REAL*4 A(100)/100*1/,B(100)/100*1/
      REAL*4 A1(100),B1(100)
      INTEGER*4 L/1/

      DO 10 I=1,100
10      A1(I)=FLOAT(I)

      DO 11 I=1,100,2
11      A(I)=FLOAT(I+1)

      DO 12 I=1,100,3
12      B(I)=FLOAT(I+2)
      IF(L.EQ.0) WRITE(6,*) 'NG'
      DO 13 I=1,100
13      B1(I)=A(I)+A1(I)+B(I)
      WRITE(6,*) B1
      STOP
      END
