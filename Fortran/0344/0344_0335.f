      PROGRAM MAIN
      REAL*8  A(100),B(100),C(100),D(100)
      DATA A/100*0.3/,B/100*0.7/,C/100*0.9/,D/100*0.11/
      DO 10 I=1,99
         D(I)=A(I)*(B(I)-1)
         A(I+1)=(D(I)-1+I)/(C(I)+1)
   10    D(100)=D(100)+A(10)
      WRITE(6,*) I
      WRITE(6,*) 'A => '
      WRITE(6,100) A
      WRITE(6,*) 'B => '
      WRITE(6,100) B
      WRITE(6,*) 'C => '
      WRITE(6,100) C
      WRITE(6,*) 'D => '
      WRITE(6,100) D
  100 FORMAT(1H ,5E15.5)
      STOP
      END
