      DIMENSION A(2048),B(2048),C(2048)
      DATA A/2048*0/,B/2048*1.0/,C/2048*2.0/
      INTEGER*4 N/1500/,M/10/

      DO 10 I=1,N
        A(I+1) = B(I)*A(I)+C(I)
  10  CONTINUE

      S1=5.
      DO 20 I=1,16
        S1   = B(I)*S1-C(I)+A(I)
  20  CONTINUE

      DO 21 I=1,32
        S1   = B(I)*S1-C(I)+A(I)
  21  CONTINUE

       S2=3.
      DO 22 I=1,64
        S1   = B(I)*S1-C(I)+A(I)
  22  CONTINUE

      DO 23 I=1,128
        S1   = B(I)*S1-C(I)+A(I)
  23  CONTINUE

      S=2.
      DO 24 I=1,256
        S1   = B(I)*S1-C(I)+A(I)
  24  CONTINUE

      DO 25 I=1,512
        S1   = B(I)*S1-C(I)+A(I)
  25  CONTINUE

      DO 26 I=1,1024
        S1   = B(I)*S1-C(I)+A(I)
  26  CONTINUE

      DO 27 I=1,2048
        S1   = B(I)*S1-C(I)+A(I)
  27  CONTINUE

      DO 28 I=1,16
        S2   = B(I)*S2-C(I)+A(I)
  28  CONTINUE

      WRITE(6,*) S1,S2,A
      STOP
      END
