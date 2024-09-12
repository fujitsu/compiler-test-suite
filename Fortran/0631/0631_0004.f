      REAL A(10,10,10)/1000*1.0/
      REAL B(10,10,10)/1000*1.0/
      CALL SUB1(A,B,1)
      CALL SUB2(A,B,1)
      CALL SUB3(A,B,1)
      CALL SUB4(A,B,1)
      CALL SUB5(A,B,1)
      CALL SUB6(A,B,1)
      CALL SUB7(A,B,1)
      CALL SUB8(A,B)
      WRITE(6,*) (((A(K,J,I),K=1,1),J=1,1),I=1,1)
      WRITE(6,*) (((B(K,J,I),K=1,1),J=1,1),I=1,1)
      END
      SUBROUTINE SUB1(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,N
        DO 10 J=1,1
          DO 10 K=1,1
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB2(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,1
        DO 10 J=1,N
          DO 10 K=1,1
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB3(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,1
        DO 10 J=1,1
          DO 10 K=1,N
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB4(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,N
        DO 10 J=1,N
          DO 10 K=1,1
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB5(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,N
        DO 10 J=1,1
          DO 10 K=1,N
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB6(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,1
        DO 10 J=1,N
          DO 10 K=1,N
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB7(A,B,N)
      INTEGER N
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,N
        DO 10 J=1,N
          DO 10 K=1,N
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB8(A,B)
      REAL A(10,10,10)
      REAL B(10,10,10)
      DO 10 I=1,1
        DO 10 J=1,1
          DO 10 K=1,1
            A(K,J,I)=B(K,J,I)+1.0
   10 CONTINUE
      END
