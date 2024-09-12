       PROGRAM MAIN
      REAL * 8 A(12),B(12),C(12),D(12)
      COMMON /COM1/A,B,C,D
      DATA N/10/

      CALL INIT

      DO 1 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
1     CONTINUE
      WRITE(6,*) ' NO.1 ',A,B,C,D

      CALL INIT
      DO 2 I=2,N+1
        D(I)=A(I)
        A(I)=A(I-1)*B(I)+C(I)
2     CONTINUE
      WRITE(6,*) ' NO.2 ',A,B,C,D

      CALL INIT
      DO 3 I=2,N+1
        D(I)=A(I-1)
        A(I)=A(I-1)*B(I)+C(I)
3     CONTINUE
      WRITE(6,*) ' NO.3 ',A,B,C,D

      CALL INIT
      DO 4 I=3,N+1
        D(I)=A(I-2)
        A(I)=A(I-1)*B(I)+C(I)
4     CONTINUE
      WRITE(6,*) ' NO.4 ',A,B,C,D

      CALL INIT
      DO 5 I=2,N+1
        D(I)=A(I+1)
        A(I)=A(I-1)*B(I)+C(I)
5     CONTINUE
      WRITE(6,*) ' NO.5 ',A,B,C,D

      CALL INIT
      DO 6 I=2,N-1
        D(I)=A(I+2)
        A(I)=A(I-1)*B(I)+C(I)
6     CONTINUE
      WRITE(6,*) ' NO.6 ',A,B,C,D

      CALL INIT
      DO 7 I=2,N+1
        B(I)=A(I)
        A(I)=A(I-1)*B(I)+C(I)
7     CONTINUE
      WRITE(6,*) ' NO.7 ',A,B,C,D

      CALL INIT
      DO 8 I=2,N
        B(I)=A(I-1)
        A(I)=A(I-1)*B(I)+C(I)
8     CONTINUE
      WRITE(6,*) ' NO.8 ',A,B,C,D

      CALL INIT
      DO 9 I=3,N+1
        B(I)=A(I-2)
        A(I)=A(I-1)*B(I)+C(I)
9     CONTINUE
      WRITE(6,*) ' NO.9 ',A,B,C,D

      CALL INIT
      DO 10 I=2,N
        B(I)=A(I+1)
        A(I)=A(I-1)*B(I)+C(I)
10    CONTINUE
      WRITE(6,*) ' NO.10 ',A,B,C,D

      CALL INIT
      DO 11 I=2,N-1
        B(I)=A(I+2)
        A(I)=A(I-1)*B(I)+C(I)
11    CONTINUE
      WRITE(6,*) ' NO.11 ',A,B,C,D

      CALL INIT
      DO 12 I=2,N+1
        A(I)=D(I)
        A(I)=A(I-1)*B(I)+C(I)
12    CONTINUE
      WRITE(6,*) ' NO.12 ',A,B,C,D

      CALL INIT
      DO 13 I=2,N+1
        A(I-1)=D(I)
        A(I)=A(I-1)*B(I)+C(I)
13    CONTINUE
      WRITE(6,*) ' NO.13 ',A,B,C,D

      CALL INIT
      DO 14 I=3,N+1
        A(I-2)=D(I)
        A(I)=A(I-1)*B(I)+C(I)
14    CONTINUE
      WRITE(6,*) ' NO.14 ',A,B,C,D

      CALL INIT
      DO 15 I=2,N+1
        A(I+1)=D(I)
        A(I)=A(I-1)*B(I)+C(I)
15    CONTINUE
      WRITE(6,*) ' NO.15 ',A,B,C,D

      CALL INIT
      DO 16 I=2,N-1
        A(I+2)=D(I)
        A(I)=A(I-1)*B(I)+C(I)
16    CONTINUE
      WRITE(6,*) ' NO.16 ',A,B,C,D

      CALL INIT
      DO 17 I=2,N+1
        A(I)=B(I)
        A(I)=A(I-1)*B(I)+C(I)
17    CONTINUE
      WRITE(6,*) ' NO.17 ',A,B,C,D

      CALL INIT
      DO 18 I=2,N+1
        A(I-1)=B(I)
        A(I)=A(I-1)*B(I)+C(I)
18    CONTINUE
      WRITE(6,*) ' NO.18 ',A,B,C,D

      CALL INIT
      DO 19 I=3,N+1
        A(I-2)=B(I)
        A(I)=A(I-1)*B(I)+C(I)
19    CONTINUE
      WRITE(6,*) ' NO.19 ',A,B,C,D

      CALL INIT
      DO 20 I=2,N
        A(I+1)=B(I)
        A(I)=A(I-1)*B(I)+C(I)
20    CONTINUE
      WRITE(6,*) ' NO.20 ',A,B,C,D

      CALL INIT
      DO 21 I=2,N-1
        A(I+2)=B(I)
        A(I)=A(I-1)*B(I)+C(I)
21    CONTINUE
      WRITE(6,*) ' NO.21 ',A,B,C,D

      CALL INIT
      DO 22 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        D(I)=A(I)
22    CONTINUE
      WRITE(6,*) ' NO.22 ',A,B,C,D

      CALL INIT
      DO 23 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        D(I)=A(I-1)
23     CONTINUE
      WRITE(6,*) ' NO.23 ',A,B,C,D

      CALL INIT
      DO 24 I=3,N+1
        A(I)=A(I-1)*B(I)+C(I)
        D(I)=A(I-2)
24     CONTINUE
      WRITE(6,*) ' NO.24 ',A,B,C,D

      CALL INIT
      DO 25 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        D(I)=A(I+1)
25     CONTINUE
      WRITE(6,*) ' NO.25 ',A,B,C,D

      CALL INIT
      DO 26 I=2,N-1
        A(I)=A(I-1)*B(I)+C(I)
        D(I)=A(I+2)
26     CONTINUE
      WRITE(6,*) ' NO.26 ',A,B,C,D

      CALL INIT
      DO 27 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        B(I)=A(I)
27     CONTINUE
      WRITE(6,*) ' NO. 27 ',A,B,C,D

      CALL INIT
      DO 28 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        B(I)=A(I-1)
28     CONTINUE
      WRITE(6,*) ' NO.28 ', A,B,C,D

      CALL INIT
      DO 29 I=3,N+1
        A(I)=A(I-1)*B(I)+C(I)
        B(I)=A(I-2)
29     CONTINUE
      WRITE(6,*) ' NO.29 ',A ,B,C,D

      CALL INIT
      DO 30 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        B(I)=A(I+1)
30    CONTINUE
      WRITE(6,*) ' NO.30 ',A,B,C,D

      CALL INIT
      DO 31 I=2,N-1
        A(I)=A(I-1)*B(I)+C(I)
        B(I)=A(I+2)
31    CONTINUE
      WRITE(6,*) ' NO.31 ',A,B,C,D

      CALL INIT
      DO 32 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I)=D(I)
32    CONTINUE
      WRITE(6,*) ' NO.32 ',A,B,C,D

      CALL INIT
      DO 33 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I-1)=D(I)
33    CONTINUE
      WRITE(6,*) ' NO.33 ',A,B,C,D

      CALL INIT
      DO 34 I=3,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I-2)=D(I)
34    CONTINUE
      WRITE(6,*) ' NO.34 ',A,B,C,D

      CALL INIT
      DO 35 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I+1)=D(I)
35    CONTINUE
      WRITE(6,*) ' NO.35 ',A,B,C,D

      CALL INIT
      DO 36 I=2,N-1
        A(I)=A(I-1)*B(I)+C(I)
        A(I+2)=D(I)
36    CONTINUE
      WRITE(6,*) ' NO.36 ',A,B,C,D

      CALL INIT
      DO 37 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I)=B(I)
37    CONTINUE
      WRITE(6,*) ' NO.37 ',A,B,C,D

      CALL INIT
      DO 38 I=2,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I-1)=B(I)
38    CONTINUE
      WRITE(6,*) ' NO.38 ',A,B,C,D

      CALL INIT
      DO 39 I=3,N+1
        A(I)=A(I-1)*B(I)+C(I)
        A(I-2)=B(I)
39    CONTINUE
      WRITE(6,*) ' NO.39 ',A,B,C,D

      CALL INIT
      DO 40 I=2,N
        A(I)=A(I-1)*B(I)+C(I)
        A(I+1)=B(I)
40    CONTINUE
      WRITE(6,*) ' NO.40 ',A,B,C,D

      CALL INIT
      DO 41 I=2,N-1
        A(I)=A(I-1)*B(I)+C(I)
        A(I+2)=B(I)
41    CONTINUE
      WRITE(6,*) ' NO.41 ',A,B,C,D


      STOP
      END

      SUBROUTINE INIT
      REAL * 8 A(12),B(12),C(12),D(12)
      COMMON /COM1/A,B,C,D
      DATA N/11/

      DO 1 I=1,N+1
       A(I)=.22
       B(I)=.5
       C(I)=1.
       D(I)=1.
 1    CONTINUE
      RETURN
      END
