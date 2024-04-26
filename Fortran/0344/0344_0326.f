      PROGRAM MAIN
      INTEGER*4 A(100),B(100),C/2/
      DATA A/100*1/,B/100*5/
C
      C=2
      DO 10 I=1,97,2
        A(I+1)=A(I)
        A(I)=I+C
        B(I+1)=B(A(I))+A(I+1)
        B(I)=B(A(I))+A(I+1)
   10 CONTINUE
C
      
      WRITE(6,*) A
      STOP
      END
