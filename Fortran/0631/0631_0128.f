      SUBROUTINE SUB01(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+C(I,J,K)**.3
      DO 10 L=2,10
      DO 10 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,20
      DO 11 L=2,10
      DO 11 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=A(I,J,K,L,M)/8.+B(I,J,K,L,M)**.3
   11 CONTINUE
       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 I=2,20
      DO 10 J=2,20
      DO 10 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3
      DO 11 L=2,20
      DO 11 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 20 I=2,20
      DO 20 J=2,20
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3
      DO 21 L=2,20
      DO 21 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 I=2,20
      DO 30 J=2,20
      DO 30 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3
      DO 31 L=2,20
      DO 31 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 40 I=2,20
      DO 40 J=2,20
      DO 40 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 41 L=2,20
      DO 41 M=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   41 CONTINUE
       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 50 I=2,20
      DO 50 J=2,20
      DO 50 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3
      DO 51 L=2,20
      DO 51 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   51 CONTINUE
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 60 I=2,20
      DO 60 J=2,20
      DO 60 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3
      DO 61 L=2,20
      DO 61 M=2,20
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   61 CONTINUE
       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 70 I=2,20
      DO 70 J=2,20
      DO 70 K=2,20
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
       S=C(I,J,K)/8.+D(I,J,K)**.3
      DO 71 L=2,10
      DO 71 M=2,20
       S=A(I,J,K,L,M)/7.
       B(I,J,K,L,M)=S*8.
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
       S=B(I,J,K,L,M)**.3
   71 CONTINUE
       D(I,J,K)=S*8.
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   70 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      RETURN
      END

      PROGRAM MAIN
      REAL A(3200000)
      REAL B(3200000)
      REAL C(8000)
      REAL D(8000)
      DO 10 J=1,8000
       C(J)=J**.5*.01
       D(J)=J*.01
      DO 10 I=1,400
       A((J-1)*400+I)=((J-1)*400+I)**.5*.01
       B((J-1)*400+I)=((J-1)*400+I)*.01
   10 CONTINUE
      CALL SUB01(A,B,C,D)
      CALL SUB02(B,A,D,C)
      CALL SUB03(A,B,C,D)
      WRITE(6,*) (A(I),I=5001,5100)
      WRITE(6,*) (B(I),I=5001,5100)
      WRITE(6,*) (C(I),I=3001,3100)
      WRITE(6,*) (D(I),I=3001,3100)
      END
