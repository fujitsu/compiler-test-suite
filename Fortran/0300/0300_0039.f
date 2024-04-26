      REAL*8 A1(10),A2(10),C(10),D(10),E(10),F(10),A3(10)
      DATA C/1,2,3,4,5,6,7,8,9,10/
      DATA A2/1,2,3,4,5,6,7,8,9,10/
      data A3/1,2,3,4,5,6,7,8,9,10/

      DO i=1,10
       A1(i)=SIN(A2(i))
       A2(i)=SIN(A3(i))
       A3(i)=SIN(C(i))
      ENDDO
      WRITE(6,*)'dsin7 A1=',A1
      WRITE(6,*)'dsin7 A2=',A2
      WRITE(6,*)'dsin7 A3=',A3
      END
