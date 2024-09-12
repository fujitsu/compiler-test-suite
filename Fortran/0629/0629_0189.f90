REAL*8 A1(10),B1(10),C(10),D(10),A2(10),B2(10)

DATA C/1,2,3,4,5,6,7,8,9,10/
DATA D/11,12,13,14,15,16,17,18,19,20/
DO i=1,10
A1(i)=SIN(C(i))
A2(i)=SIN(D(i))
B1(i)=COS(C(i))
B2(i)=COS(D(i))
ENDDO
WRITE(6,*)'dsin A1=',A1
WRITE(6,*)'dsin A2=',A2
WRITE(6,*)'dexp B1=',B1
WRITE(6,*)'dexp B2=',B2

END
