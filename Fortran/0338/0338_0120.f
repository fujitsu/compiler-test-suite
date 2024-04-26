      BLOCK DATA TDATA
      COMMON /OLD/A,B,C/NEW/X,Y,Z
      DIMENSION A(100)
      INTEGER X(100),Y,Z
      DATA A/100*1.0/,B/2.0/,C/3.0/,X/100*4/,Y/5/,Z/6/
      END
C
      COMMON /OLD/A,B,C/NEW/X,Y,Z
      DIMENSION A(100)
      INTEGER X(100),Y,Z
      DO 1 I=1,100
    1  B = B + A(I) + C
      DO 2 I=1,100
    2  Y = Y + X(I) + Z
      WRITE(6,*) B,X
      STOP
      END
