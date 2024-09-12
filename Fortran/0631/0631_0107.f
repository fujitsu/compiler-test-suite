      SUBROUTINE SUB01(A,B)
      REAL A(50,50,50)
      REAL B(50,50,50)

      DO 10 K=1,50
      DO 10 J=1,50
      DO 10 I=1,50
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 20 K=2,50
      DO 20 J=2,50
      DO 20 I=2,50
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 30 K=2,30
      DO 30 J=2,30
      DO 30 I=2,30
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 40 K=1,20
      DO 40 J=1,20
      DO 40 I=1,20
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 50 K=2,10
      DO 50 J=2,10
      DO 50 I=2,10
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 60 K=2,4
      DO 60 J=2,4
      DO 60 I=2,4
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 70 K=2,2
      DO 70 J=2,2
      DO 70 I=2,2
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   70 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB02(A,B)
      REAL A(50,50,50)
      REAL B(50,50,50)

      DO 10 K=1,50
      DO 10 J=1,49
      DO 10 I=2,50
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 20 K=2,50
      DO 20 J=2,50
      DO 20 I=2,10
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 30 K=2,50
      DO 30 J=2,50
      DO 30 I=2,4
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 40 K=2,4
      DO 40 J=2,4
      DO 40 I=2,4,2
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 50 K=2,4,2
      DO 50 J=2,4,2
      DO 50 I=2,2
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB03(A,B)
      REAL A(50,50,50)
      REAL B(50,50,50)

      DO 10 K=1,50,2
      DO 10 J=1,50,2
      DO 10 I=1,50,2
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 20 K=1,50,5
      DO 20 J=1,50,5
      DO 20 I=1,50,5
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 30 K=1,50,10
      DO 30 J=1,50,10
      DO 30 I=1,50,10
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 40 K=1,50,20
      DO 40 J=1,50,20
      DO 40 I=1,50,20
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 50 K=1,50,49
      DO 50 J=1,50,49
      DO 50 I=1,50,49
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 60 K=1,50,50
      DO 60 J=1,50,50
      DO 60 I=1,50,50
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      RETURN
      END
      SUBROUTINE SUB04(A,B)
      REAL A(50,50,50)
      REAL B(50,50,50)

      DO 10 K=1,50,5
      DO 10 J=1,50,10
      DO 10 I=1,50
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   10 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 20 K=1,50,5
      DO 20 J=1,10
      DO 20 I=1,10
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   20 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 30 K=1,50,3
      DO 30 J=1,10
      DO 30 I=1,10
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   30 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 40 K=1,10
      DO 40 J=1,50,20
      DO 40 I=1,50
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   40 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 50 K=1,50,10
      DO 50 J=1,50,2
      DO 50 I=1,50,25
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   50 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      DO 60 K=1,50
      DO 60 J=1,50,2
      DO 60 I=1,50,25
       A(I,J,K)=B(I,J,K)+1.
       B(I,J,K)=B(I,J,K)+1./6.
   60 CONTINUE
      WRITE(6,*) (A(I,10,10),I=1,10)
      WRITE(6,*) (B(I,10,10),I=1,10)

      RETURN
      END

      PROGRAM MAIN
      REAL A(125000)
      REAL B(125000)
      DO 10 I=1,125000
       A(I)=0.
       B(I)=0.
   10 CONTINUE
      CALL SUB01(A,B)
      CALL SUB02(B,A)
      CALL SUB03(A,B)
      CALL SUB04(B,A)
      WRITE(6,*) (A(I),I=5000,5100)
      WRITE(6,*) (B(I),I=5000,5100)
      END
