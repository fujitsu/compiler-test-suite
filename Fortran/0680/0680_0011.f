      REAL        A(2000),B      ,C(2000)
      DATA N/1999/

      DO 1  I=1,2000
        A(I)=1
        B=0.5
        C(I)=1
  1   CONTINUE

      DO 10 I=1,N
        A(I)= B*A(I)+C(I)
  10  CONTINUE

      S =5.
      DO 20 I=1,N
        C(I) = B*C(I)-C(I)
  20  CONTINUE

      S1=0.
      DO 21 I=1,2000
21    S1=S1+S+A(I)

       S=5.
       S2=0
      DO 30 I=1,N
        A(I) =B*A(I)+C(I)
        C(I) = B*C(I)-C(I)
      S2=S2+S
  30  CONTINUE


       S2=A(1999)+A(2000)+S
       S=5.
       S3 = 0
      DO 40 J=1,N-1500
      DO 40 I=1,N
        A(I) =B*A(I)+C(I)
        S    = B*S -C(I)
      S3=S3+S+C(I)
  40  CONTINUE


      WRITE(6,*) A,S1,S2,C
      STOP
      END
