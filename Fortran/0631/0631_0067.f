      REAL    A(1000)
      INTEGER N
      N=300
      CALL SUB1(N,A)
      CALL SUB2(A)
      CALL SUB3(A)
      CALL SUB4(A)
      CALL SUB5(N,A)
      CALL SUB6(N,A)
      END
      SUBROUTINE SUB1(N,A)
      INTEGER  N
      REAL A(N)
      DO 10 I=1,99
        A(I)=0.0
   10 CONTINUE
      DO 20 I=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5),A(99)
      END
      SUBROUTINE SUB2(A)
      REAL A(*)
      DO 10 I=1,99
        A(I)=0.0
   10 CONTINUE
      DO 20 I=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5),A(99)
      END
      SUBROUTINE SUB3(A)
      REAL A(1)
      DO 10 I=1,99
        A(I)=0.0
   10 CONTINUE
      DO 20 I=1,99
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5),A(99)
      END
      SUBROUTINE SUB4(A)
      REAL A(100)
      DO 10 I=1,99
        A(I)=0.0
   10 CONTINUE
      DO 20 I=1,100
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5),A(99)
      END
      SUBROUTINE SUB5(N,A)
      INTEGER  N
      REAL A(N)
      DO 10 I=1,99
        A(I)=0.0
   10 CONTINUE
      DO 20 I=1,N
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5),A(99)
      END
      SUBROUTINE SUB6(N,A)
      INTEGER  N
      REAL A(*)
      DO 10 I=1,99
        A(I)=0.0
   10 CONTINUE
      DO 20 I=1,N
        A(5)=1.0
   20 CONTINUE
      WRITE(6,*) A(5),A(99)
      END
