      SUBROUTINE SUB01(A,B)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)

      DO 10 M=1,20
      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 20 M=1,20
      DO 20 L=1,20
      DO 20 K=1,10
      DO 20 J=1,10
      DO 20 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 30 M=1,20
      DO 30 L=1,20,2
      DO 30 K=1,20
      DO 30 J=1,10
      DO 30 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 40 M=1,20
      DO 40 L=1,20
      DO 40 K=1,20
      DO 40 J=1,20
      DO 40 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 50 M=1,20
      DO 50 L=1,20
      DO 50 K=1,10
      DO 50 J=1,10
      DO 50 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 60 M=1,20
      DO 60 L=1,20,2
      DO 60 K=1,20
      DO 60 J=1,10
      DO 60 I=1,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB02(A,B)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)

      DO 10 M=2,20
      DO 10 L=2,20
      DO 10 K=2,20
      DO 10 J=2,20
      DO 10 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L-1,M-1)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=2,20
      DO 20 J=2,10
      DO 20 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L-1,M-1)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 30 M=2,20
      DO 30 L=2,20
      DO 30 K=2,20
      DO 30 J=2,20,2
      DO 30 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L-1,M-1)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 40 M=2,20
      DO 40 L=2,20
      DO 40 K=2,20
      DO 40 J=2,20
      DO 40 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L-1,M-1)=B(I,J,K,L,M)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 50 M=2,20
      DO 50 L=2,20
      DO 50 K=2,20
      DO 50 J=2,10
      DO 50 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L-1,M-1)=B(I,J,K,L,M)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 60 M=2,20
      DO 60 L=2,20
      DO 60 K=2,20
      DO 60 J=2,20,2
      DO 60 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L-1,M-1)=B(I,J,K,L,M)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB03(A,B)
      REAL A(20,20,20,20,20)
      REAL B(20,20,20,20,20)

      DO 10 M=2,20
      DO 10 L=2,20
      DO 10 K=2,20
      DO 10 J=2,20
      DO 10 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 20 M=2,20
      DO 20 L=2,20
      DO 20 K=2,20
      DO 20 J=2,10
      DO 20 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 30 M=2,20
      DO 30 L=2,20
      DO 30 K=2,20
      DO 30 J=2,20,2
      DO 30 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 40 M=2,20
      DO 40 L=2,20
      DO 40 K=2,20
      DO 40 J=2,20
      DO 40 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 50 M=2,20
      DO 50 L=2,20
      DO 50 K=2,20
      DO 50 J=2,10
      DO 50 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      DO 60 M=2,20
      DO 60 L=2,20
      DO 60 K=2,20
      DO 60 J=2,20,2
      DO 60 I=2,20
       A(I,J,K,L,M)=B(I,J,K,L,M)+1.
       B(I,J,K,L,M)=B(I,J,K,L,M)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10,10),I=1,10)

      RETURN
      END

      PROGRAM MAIN
      REAL A(3200000)
      REAL B(3200000)
      DO 10 I=1,3200000
       A(I)=I*.0000001
       B(I)=I*.0000001
   10 CONTINUE
      CALL SUB01(A,B)
      CALL SUB02(B,A)
      CALL SUB03(A,B)
      WRITE(6,*) (A(I),I=5001,5100)
      WRITE(6,*) (B(I),I=5001,5100)
      END
