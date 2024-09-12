          COMMON /BLK/ A(2016),B(2016),C(2016)
          REAL*4 A,B,C
          COMMON /IBLK/         X(32),Z,N(2016),M
          INTEGER*4 N,M,L,K
          REAL*8 X,Z
          K=0
          L=M
          DO 100 J=1,M
          DO 10 I=1,10
            A(I) = SIN(B(I))+COS(C(I))+FLOAT(N(I))
            B(I*I) = 1.0
            X(I) = 2.0+FLOAT(L)+Z
   10     CONTINUE
          DO 20 I=33,96
            A(I) = SIN(B(I))+COS(C(I))+FLOAT(N(I))
   20     CONTINUE
          L=L+33+J+N(J)+N(M)+INT(DSIN(X(J))+DCOS(X(J)))-100000
          DO 30 I=97,224
            A(I) = SIN(B(I))+L+M
   30     CONTINUE
          DO 40 I=225,480
            A(I) = COS(B(I))+SIN(B(225))+COS(B(225))+SIN(B(I))
   40     CONTINUE
          DO 50 I=481,992
            A(I) = SIN(C(992))+SIN(C(481))+COS(C(992))
   50     CONTINUE
          A(991)=SIN(C(992))+COS(C(992))
          DO 60 I=993,2016
            A(I) = B(I)+C(I)+FLOAT(J+I+M)
   60     CONTINUE
          K=L+M
  100     CONTINUE
          WRITE(6,*) A,B,C,N,M,X,Z,L,K
          STOP
          END
          BLOCK DATA
          COMMON /BLK/A,B,C
          COMMON /IBLK/         X(32),Z,N(2016),M
          REAL*4 A(2016),B(2016),C(2016)
          REAL*8 X,Z
          INTEGER*4 N,M
          DATA A/2016*0.0/,B/2016*1.0/,C/2016*1.0/
          DATA X/32*1.0/,Z/2.0/
          DATA N/10*1,2006*2/,M/10/
          END
