      REAL A(100000)/100000*1.0/
      REAL B(100000)/100000*1.0/
      CALL SUB1(A,B,100000)
      CALL SUB2(A,B)
      CALL SUB3(A,B)
      CALL SUB4(A,B)
      WRITE(6,*) (A(I),I=1,10)
      END
      SUBROUTINE SUB1(A,B,N)
      REAL A(100000)
      REAL B(100000)
      INTEGER N
      DO 10 I=1,N
        A(I)=B(I)+2.0
   10 CONTINUE
      END
      SUBROUTINE SUB2(A,B)
      REAL A(100000)
      REAL B(100000)
      DO 10 I=1,100000
        A(I)=B(I)+2.0
   10 CONTINUE
      END
      SUBROUTINE SUB3(A,B)
      REAL A(100000)
      REAL B(100000)
      DO 10 I=1,10000
        A(I)=B(I)+A(I)+2.0
        B(I)=A(I)+B(I)+2.0
   10 CONTINUE
      END
      SUBROUTINE SUB4(A,B)
      REAL A(100000)
      REAL B(100000)
      DO 10 I=1,10
        A(I)=B(I)+2.0
   10 CONTINUE
      END
      SUBROUTINE SUB5(A,B)
      REAL A(100000)
      REAL B(100000)
      DO 10 I=1,0
        A(I)=B(I)+2.0
   10 CONTINUE
      END
