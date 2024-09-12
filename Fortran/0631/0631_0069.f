      CALL       ZI5
      CALL       ZI6
      CALL       ZI7
      CALL       ZI8
      END
      SUBROUTINE ZI5
      N=2
      CALL SUB1(N)
      END
      SUBROUTINE SUB1(N)
      INTEGER     N
      INTEGER     A(100,3)/300*1/
      INTEGER     B(100,3)/1,2,3,4,5,6,7,8,9,10,290*1/
      INTEGER     C(100,3)/300*1/
      DO 20 I1=1,N
      DO 20 I4=3,98
        A(I4,I1)=ABS(A(I4-2,I1))*B(I4,I1)
        C(I4,I1)=MAX(C(I4,I1),B(I4,I1))
   20 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) C
      END
      SUBROUTINE ZI6
      REAL A(100,100)
      REAL B(100,100)
      REAL D(100,100)
      DO 10 I=1,100
      DO 10 J=1,100
        A(J  ,I  )=I+J
        B(J  ,I  )=I+J
        D(J  ,I  )=I+J
   10 CONTINUE
      N=90
      CALL SUB2(A,B,D,N)
      END
      SUBROUTINE SUB2(A,B,D,N)
      REAL A(100,100)
      REAL B(100,100)
      REAL D(100,100)
      DO 10 I=10,N
      DO 10 J=10,90
        X         =B(J  ,I  )+D(J  ,I  )
        A(J  ,I  )=A(J-2,I  )+X
   10 CONTINUE
      WRITE(6,*)((A(J,I),J=10,90,5),I=10,90,5)
      END
      SUBROUTINE ZI7
      INTEGER     A(100,3)/1,2,3,4,5,6,7,8,9,10,285*1,1,2,3,4,5/
      INTEGER     B(100,3)/1,2,3,4,5,6,7,8,9,10,285*1,1,2,3,4,5/
      INTEGER     C(100,3)/1,2,3,4,5,6,7,8,9,10,285*1,1,2,3,4,5/
      DO 20 I1=1,2
      DO 20 I4=3,98
        A(I4,I1)=ABS(A(I4-2,I1))*B(I4,I1)
        A(I4,I1)=A(I4-2,I1)+B(I4,I1)
        A(I4,I1)=A(I4-2,I1)*B(I4,I1)
        C(I4,I1)=MAX(C(I4,I1),B(I4,I1))
        C(I4,I1)=C(I4,I1)*B(I4,I1)
        C(I4,I1)=C(I4,I1)/B(I4,I1)
   20 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) C
      END
      SUBROUTINE ZI8
      REAL A(100,100)
      REAL B(100,100)
      REAL D(100,100)
      DO 10 I=1,100
      DO 10 J=1,100
        A(J  ,I  )=I+J
        B(J  ,I  )=I+J
        D(J  ,I  )=I+J
   10 CONTINUE
      N=90
      CALL SUB3(A,B,D,N)
      END
      SUBROUTINE SUB3(A,B,D,N)
      REAL A(100,100)
      REAL B(100,100)
      REAL D(100,100)
      DO 10 I=10,N
      DO 10 J=10,90
        X1        =B(J  ,I  )*D(J  ,I  )
        A(J  ,I  )=A(J-2,I  )+X1
        X2        =B(J  ,I  )+D(J  ,I  )
        A(J  ,I  )=A(J-2,I  )+X2
        X3        =B(J  ,I  )+D(J  ,I  )
        A(J  ,I  )=A(J-2,I  )+(X1/X1-1)
        A(J  ,I  )=A(J-2,I  )+X3
   10 CONTINUE
      WRITE(6,*)((A(J,I),J=10,90,5),I=10,90,5)
      END
