      SUBROUTINE SUB01(A,B,C,D)
      REAL A(18,18,18,18,18)
      REAL B(18,18,18,18,18)
      REAL C(18,18,18)
      REAL D(18,18,18)

      DO 10 I=2,18
      DO 10 J=2,18
      DO 10 K=2,18
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 10 L=2,18
      DO 10 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 20 I=2,18
      DO 20 J=2,18
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 20 L=2,18
      DO 20 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 I=2,18
      DO 30 J=2,18
      DO 30 K=2,18,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 30 L=2,18
      DO 30 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      RETURN
      END

      SUBROUTINE SUB02(A,B,C,D)
      REAL A(18,18,18,18,18)
      REAL B(18,18,18,18,18)
      REAL C(18,18,18)
      REAL D(18,18,18)

      DO 10 I=2,18
      DO 10 J=2,18
      DO 10 K=2,18
      DO 11 L=2,18
      DO 11 M=2,18
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

      DO 20 I=2,18
      DO 20 J=2,18
      DO 20 K=2,10
      DO 21 L=2,18
      DO 21 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 I=2,18
      DO 30 J=2,18
      DO 30 K=2,18,2
      DO 31 L=2,18
      DO 31 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      RETURN
      END

      SUBROUTINE SUB03(A,B,C,D)
      REAL A(18,18,18,18,18)
      REAL B(18,18,18,18,18)
      REAL C(18,18,18)
      REAL D(18,18,18)

      DO 10 I=2,18
      DO 10 J=2,18
      DO 10 K=2,18
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 11 L=2,18
      DO 11 M=2,18
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

      DO 20 I=2,18
      DO 20 J=2,18
      DO 20 K=2,10
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 21 L=2,18
      DO 21 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   21 CONTINUE
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)
      WRITE(6,*) (C(I,10,10),I=1,10)
      WRITE(6,*) (D(I,10,10),I=1,10)

      DO 30 I=2,18
      DO 30 J=2,18
      DO 30 K=2,18,2
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
      DO 31 L=2,18
      DO 31 M=2,18
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   31 CONTINUE
       C(I,J,K)=D(I,J,K)+1./7.
       D(I,J,K)=C(I,J,K)+1./8.
   30 CONTINUE
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
       D(J)=J**.5*.01
      DO 10 I=1,400
       A((J-1)*400+I)=((J-1)*400+I)**.5*.01
       B((J-1)*400+I)=((J-1)*400+I)**.5*.01
   10 CONTINUE
      CALL SUB01(A,B,C,D)
      CALL SUB02(B,A,D,C)
      CALL SUB03(A,B,C,D)
      WRITE(6,*) (A(I),I=5001,5100)
      WRITE(6,*) (B(I),I=5001,5100)
      WRITE(6,*) (C(I),I=3001,3100)
      WRITE(6,*) (D(I),I=3001,3100)
      END
