      SUBROUTINE SUB01(A,B,C,D)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)
      REAL C(20,20,20)
      REAL D(20,20,20)

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 20 J=1,20
      DO 20 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 M=2,20
      DO 30 L=2,10
      DO 30 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 30 J=1,20
      DO 30 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 40 M=2,20
      DO 40 L=2,20,2
      DO 40 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 40 J=1,20
      DO 40 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   40 CONTINUE
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

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
      DO 11 J=1,20
      DO 11 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=1,20
      DO 21 J=1,20
      DO 21 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 M=2,20
      DO 30 L=2,10
      DO 30 K=2,20
      DO 31 J=1,20
      DO 31 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 40 M=2,20
      DO 40 L=2,20,2
      DO 40 K=2,20
      DO 41 J=1,20
      DO 41 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   41 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   40 CONTINUE
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

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 11 J=1,20
      DO 11 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   11 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=1,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 21 J=1,20
      DO 21 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 M=2,20
      DO 30 L=2,10
      DO 30 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 31 J=1,20
      DO 31 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 40 M=2,20
      DO 40 L=2,20,2
      DO 40 K=2,20
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
      DO 41 J=1,20
      DO 41 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   41 CONTINUE
       C(K,L,M)=D(K,L,M)+1./7.
       D(K,L,M)=C(K,L,M)+1./8.
   40 CONTINUE
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
       C(J)=J*.01
       D(J)=J*.01
      DO 10 I=1,400
       A((J-1)*400+I)=((J-1)*400+I)*.01
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
