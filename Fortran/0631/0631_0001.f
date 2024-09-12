      REAL A(20,20)/400*1.0/
      REAL B(20,20)/400*1.0/
      CALL SUB1(A,B,10)
      CALL SUB2(A,B,10)
      CALL SUB3(A,B,10)
      CALL SUB4(A,B)
      WRITE(6,*) ((A(J,I),J=1,10),I=1,10)
      WRITE(6,*) ((B(J,I),J=1,10),I=1,10)
      END
      SUBROUTINE SUB1(A,B,N)
      INTEGER N
      REAL A(20,20)
      REAL B(20,20)
      DO 10 I=1,N
        DO 10 J=1,10
          A(J,I)=B(J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB2(A,B,N)
      INTEGER N
      REAL A(20,20)
      REAL B(20,20)
      DO 10 I=1,10
        DO 10 J=1,N
          A(J,I)=B(J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB3(A,B,N)
      INTEGER N
      REAL A(20,20)
      REAL B(20,20)
      DO 10 I=1,N
        DO 10 J=1,N
          A(J,I)=B(J,I)+1.0
   10 CONTINUE
      END
      SUBROUTINE SUB4(A,B)
      REAL A(20,20)
      REAL B(20,20)
      DO 10 I=1,10
        DO 10 J=1,10
          A(J,I)=B(J,I)+1.0
   10 CONTINUE
      END
