      SUBROUTINE SUB01(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,20
       IF(L.EQ.10) GOTO 11
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
 11   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,20
      DO 20 K=1,20
       IF(L.EQ.10) GOTO 21
      DO 20 J=2,20
      DO 20 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
 21   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=1,20
      DO 30 K=1,10
      DO 30 J=2,20
       IF(L.EQ.10) GOTO 31
      DO 30 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
 31   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=1,20
      DO 40 K=1,10
      DO 40 J=2,20
      DO 40 I=1,20
       IF(L.EQ.10) GOTO 41
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   40 CONTINUE
 41   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB02(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,20
      DO 11 K=1,20
      DO 11 J=1,20
      DO 11 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   11 CONTINUE
       IF(L.GT.10) GOTO 12
   10 CONTINUE
 12   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,20
      DO 20 K=1,20
      DO 21 J=2,20
      DO 21 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   21 CONTINUE
       IF(L.GT.10) GOTO 22
   20 CONTINUE
 22   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=1,10
      DO 30 K=1,10
      DO 30 J=2,20
      DO 31 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   31 CONTINUE
       IF(L.EQ.10) GOTO 32
   30 CONTINUE
 32   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=1,20
      DO 40 K=1,10
      DO 40 J=2,20
      DO 40 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.10) GOTO 41
   40 CONTINUE
 41   WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END

      PROGRAM MAIN
      REAL A(160000)
      REAL B(160000)
      DO 10 I=1,160000
       A(I)=I**(1/2)+I*.01
       B(I)=I**(1/3)+I*.01
   10 CONTINUE
      CALL SUB01(A,B)
      CALL SUB02(B,A)
      WRITE(6,*) (A(I),I=5001,5100)
      WRITE(6,*) (B(I),I=5001,5100)
      END
