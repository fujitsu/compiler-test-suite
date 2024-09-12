      REAL A(3000),B(3000),C(3000)
      COMMON /AA/A,B,C
      DO 11 I=1,3000
       A(I)=0.0
       B(I)=1.0
 11    C(I)=1.0
      CALL SUB1
      CALL SUB2
      CALL SUB3
      CALL SUB4
      CALL SUB5
      END
      SUBROUTINE SUB1
      REAL A(3000),B(3000)
      COMMON /AA/A,B
      DO 10 I=2,3000
 10    A(I)=A(I-1)*A(I)+B(I)
      WRITE(6,*) A(1),A(1025),A(2049),A(3000)
      RETURN
      END
      SUBROUTINE SUB2
      REAL A(3000),B(3000),C(3000)
      COMMON /AA/A,B,C
      DO 20 I=1,3000
 20    A(1)=A(1)*B(I)+C(I)
      WRITE(6,*) A(1),A(1025),A(2049),A(3000)
      RETURN
      END
      SUBROUTINE SUB3
      REAL A(3000),B(3000),C(3000)
      COMMON /AA/A,B,C
      DO 30 I=1,3000
 30    A(3)=A(3)*B(I)+C(I)
      WRITE(6,*) A(1),A(1025),A(2049),A(3000)
      RETURN
      END
      SUBROUTINE SUB4
      REAL A(3000),B(3000),C(3000)
      COMMON /AA/A,B,C
      DO 40 J=1,10
      DO 40 I=1,3000
 40    A(J)=A(J)*B(I)+C(I)
      WRITE(6,*) A(1),A(1025),A(2049),A(3000)
      RETURN
      END
      SUBROUTINE SUB5
      REAL A(3000),B(3000),C(3000)
      COMMON /AA/A,B,C
      DO 50 J=1,10
      DO 50 I=2,3000
 50    A(I)=A(I-1)*B(J)+C(J)
      WRITE(6,*) A(1),A(1025),A(2049),A(3000)
      RETURN
      END
