      PROGRAM MAIN
      N=2
      M=100
      CALL SUB1(N,M)
      STOP
      END
C
      SUBROUTINE SUB1(N,M)
      INTEGER*4 A(100),B(100),C(100)
      DATA A,B,C/300*1/
      DO 10 I=N,M-1,2
          A(I)=I
          B(I)=A(I)
          C(I)=B(I)
          B(I+1)=C(B(I-1))
   10 CONTINUE
C
      
      WRITE(6,*) A
      RETURN
      END
