      PROGRAM MAIN
      INTEGER*4 A(100),B(100),C(100)
C
      DO 10 I=1,100,2
          A(I)=I
          B(I)=A(I)
          C(A(I))=I
          A(I+1)=C(B(I))
          B(I+1)=C(A(I+1))
          A(I)=C(I)+B(I)+A(I)
   10 CONTINUE
C
      
      WRITE(6,1) A
    1 FORMAT(10I7)
      STOP
      END
