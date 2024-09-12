      SUBROUTINE SUB01(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
      DO 10 L=1,20,2
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 K=1,20
      DO 20 J=1,20
      DO 20 I=1,20
      DO 20 L=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 K=1,20
      DO 30 J=1,20
      DO 30 I=1,20
      DO 30 L=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 K=1,20
      DO 40 J=1,20
      DO 40 I=1,20
      DO 40 L=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB02(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,20
      DO 20 K=1,20
      DO 20 J=1,20
      DO 20 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 K=1,20
      DO 30 L=1,10
      DO 30 J=1,20
      DO 30 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 K=1,20
      DO 40 J=1,20
      DO 40 L=1,10
      DO 40 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB03(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
      DO 10 L=1,20,2
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 K=1,20
      DO 20 J=1,20
      DO 20 I=1,20
      DO 20 L=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 K=1,20
      DO 30 J=1,20
      DO 30 I=1,20
      DO 30 L=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 K=1,20
      DO 40 J=1,20
      DO 40 I=1,20
      DO 40 L=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB04(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,20
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,20
      DO 20 K=1,20
      DO 20 J=1,20
      DO 20 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 K=1,20
      DO 30 L=1,10
      DO 30 J=1,20
      DO 30 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 K=1,20
      DO 40 J=1,20
      DO 40 L=1,10
      DO 40 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END

      PROGRAM MAIN
      REAL A(160000)
      REAL B(160000)
      DO 10 I=1,160000
       A(I)=0.
       B(I)=0.
   10 CONTINUE
      CALL SUB01(A,B)
      CALL SUB02(B,A)
      CALL SUB03(A,B)
      CALL SUB04(B,A)
      WRITE(6,*) (A(I),I=5001,5100)
      WRITE(6,*) (B(I),I=5001,5100)
      END
