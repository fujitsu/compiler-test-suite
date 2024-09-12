      SUBROUTINE SUB01(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,10
   11 CONTINUE
      DO 10 K=1,20
       IF(L.EQ.20) GOTO 11
      DO 10 J=1,20
      DO 10 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,20
      DO 21 K=1,20
       IF(L.EQ.20) GOTO 20
      DO 21 J=1,20
      DO 21 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   21 CONTINUE
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=1,10
   32 CONTINUE
      DO 30 K=1,20
      DO 31 J=1,20
      DO 31 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   31 CONTINUE
       IF(L.EQ.20) GOTO 32
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=1,20
      DO 41 K=1,20
      DO 42 J=1,20
      DO 42 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   42 CONTINUE
       IF(L.EQ.20) GOTO 40
   41 CONTINUE
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB02(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,10
   11 CONTINUE
      DO 10 K=1,20
      DO 10 J=1,20
       IF(L.EQ.20) GOTO 11
      DO 10 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,10
      DO 20 K=1,20
   21 CONTINUE
      DO 20 J=1,20
       IF(L.EQ.20) GOTO 21
      DO 20 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=1,20
      DO 31 K=1,20
      DO 31 J=1,20
       IF(L.EQ.20) GOTO 30
      DO 31 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   31 CONTINUE
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=1,20
      DO 40 K=1,20
      DO 41 J=1,20
       IF(L.EQ.20) GOTO 40
      DO 41 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   41 CONTINUE
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 50 L=1,10
   52 CONTINUE
      DO 50 K=1,20
      DO 51 J=1,20
      DO 51 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   51 CONTINUE
       IF(L.EQ.20) GOTO 52
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 60 L=1,10
      DO 60 K=1,20
   62 CONTINUE
      DO 61 J=1,20
      DO 61 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   61 CONTINUE
       IF(L.EQ.20) GOTO 62
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 70 L=1,20
      DO 71 K=1,20
      DO 71 J=1,20
      DO 72 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   72 CONTINUE
       IF(L.EQ.20) GOTO 70
   71 CONTINUE
   70 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 80 L=1,20
      DO 80 K=1,20
      DO 81 J=1,20
      DO 82 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   82 CONTINUE
       IF(L.EQ.20) GOTO 80
   81 CONTINUE
   80 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB03(A,B)
      REAL A(20,20,20,20)
      REAL B(20,20,20,20)

      DO 10 L=1,10
   11 CONTINUE
      DO 10 K=1,20
      DO 10 J=1,20
      DO 10 I=1,20
       IF(L.EQ.20) GOTO 11
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 20 L=1,10
      DO 20 K=1,20
   21 CONTINUE
      DO 20 J=1,20
      DO 20 I=1,20
       IF(L.EQ.20) GOTO 21
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 30 L=1,10
      DO 30 K=1,20
      DO 30 J=1,20
   31 CONTINUE
      DO 30 I=1,20
       IF(L.EQ.20) GOTO 31
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 40 L=1,20
      DO 41 K=1,20
      DO 41 J=1,20
      DO 41 I=1,20
       IF(L.EQ.20) GOTO 40
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   41 CONTINUE
   40 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 50 L=1,20
      DO 50 K=1,20
      DO 51 J=1,20
      DO 51 I=1,20
       IF(L.EQ.20) GOTO 50
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   51 CONTINUE
   50 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 60 L=1,20
      DO 60 K=1,20
      DO 60 J=1,20
      DO 61 I=1,20
       IF(L.EQ.20) GOTO 60
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
   61 CONTINUE
   60 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 70 L=1,10
   72 CONTINUE
      DO 70 K=1,20
      DO 70 J=1,20
      DO 70 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.20) GOTO 72
   70 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 80 L=1,10
      DO 80 K=1,20
   82 CONTINUE
      DO 80 J=1,20
      DO 80 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.20) GOTO 82
   80 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 90 L=1,10
      DO 90 K=1,20
      DO 90 J=1,20
   92 CONTINUE
      DO 90 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.20) GOTO 92
   90 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 100 L=1,20
      DO 101 K=1,20
      DO 101 J=1,20
      DO 101 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.20) GOTO 100
  101 CONTINUE
  100 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 110 L=1,20
      DO 110 K=1,20
      DO 111 J=1,20
      DO 111 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.20) GOTO 110
  111 CONTINUE
  110 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10,10),I=1,10)

      DO 120 L=1,20
      DO 120 K=1,20
      DO 120 J=1,20
      DO 121 I=1,20
       A(I,J,K,L)=B(I,J,K,L)+1.
       B(I,J,K,L)=B(I,J,K,L)+1./6.
       IF(L.EQ.20) GOTO 120
  121 CONTINUE
  120 CONTINUE
      WRITE(6,*) (A(I,10,10,10),I=1,10)
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
      CALL SUB03(A,B)
      WRITE(6,*) (A(I),I=5001,5100)
      WRITE(6,*) (B(I),I=5001,5100)
      END
