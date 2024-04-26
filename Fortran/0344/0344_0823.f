      DOUBLE PRECISION A(5000),B(5000),T
      DATA A/10*2.0,10*-2.0,10*9.0,4970*999999.0/
      DATA B/10*1.0,10*-1.0,10*1.0,4970*999999.0/
      INTEGER I

      N=INT(COS(0.0))*7
      DO 10 I=3,N*2
         B(I+1)=A(I+2)/B(I+1)+A(I+2)-3.0
         T=A(I+2)*B(I)-B(I+1)
         A(I+2)=T*A(I)
   10 CONTINUE

      
      WRITE (6,100) (A(I),I=1,30)
  100 FORMAT((' ',6G13.5))
      STOP
      END
