REAL*8 A1(10),A2(10),C(10)
DATA C/1,2,3,4,5,6,7,8,9,10/
DO i=1,10
A1(i)=SIN(C(i))
C(i)=i+1
A2(i)=SIN(C(i))
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2
END
