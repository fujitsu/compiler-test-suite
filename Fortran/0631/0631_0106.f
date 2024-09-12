      SUBROUTINE SUB01(A,B,N)
      REAL A(N,N,N,N)
      REAL B(N,N,N,N)

      DO 10 L=5,N
      DO 10 K=1,N
      DO 10 J=1,N
      DO 10 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=2,N,2
      DO 20 K=1,N
      DO 20 J=1,N
      DO 20 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=1,N
      DO 30 K=1,N,2
      DO 30 J=1,N
      DO 30 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=1,N,2
      DO 40 K=1,N,2
      DO 40 J=1,N
      DO 40 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 50 L=2,N
      DO 50 K=2,N,2
      DO 50 J=1,N
      DO 50 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 60 L=2,N,2
      DO 60 K=2,10,2
      DO 60 J=1,N
      DO 60 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END

      SUBROUTINE SUB02(A,B,N)
      REAL A(N,N,N,N)
      REAL B(N,N,N,N)

      DO 10 L=2,N
      DO 10 I=2,N
      DO 10 K=2,N
      DO 10 J=2,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=2,N
      DO 20 K=2,10
      DO 20 I=2,N
      DO 20 J=2,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=2,N
      DO 30 K=2,10
      DO 30 J=2,N
      DO 30 I=2,10
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=2,N
      DO 40 K=2,N
      DO 40 I=2,N
      DO 40 J=2,10
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 50 I=2,N
      DO 50 J=2,N
      DO 50 K=2,N
      DO 50 L=2,10
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END

      SUBROUTINE SUB03(A,B,N)
      REAL A(N,N,N,N)
      REAL B(N,N,N,N)

      DO 10 L=2,N
      DO 10 I=1,N
      DO 10 K=1,N
      DO 10 J=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=2,N
      DO 20 K=2,10
      DO 20 I=1,N
      DO 20 J=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=2,N
      DO 30 K=2,10
      DO 30 J=2,N
      DO 30 I=1,N
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 I=1,N
      DO 40 J=1,N
      DO 40 K=2,N
      DO 40 L=2,10
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 50 J=1,N
      DO 50 K=1,N
      DO 50 L=1,N
      DO 50 I=1,10
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END

      PROGRAM MAIN
      REAL A(160000)
      REAL B(160000)
      INTEGER N/20/
      DO 10 I=1,160000
       A(I)=0.
       B(I)=0.
   10 CONTINUE
      CALL SUB01(A,B,N)
      CALL SUB02(B,A,N)
      CALL SUB03(A,B,N)
      END
