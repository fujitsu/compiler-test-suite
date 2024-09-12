REAL*8 A(10),B(10),C(10),D(10)
DATA C/1,2,3,4,5,6,7,8,9,10/
DATA D/10,9,8,7,6,5,4,3,2,1/

DO i=1,10
 A(i)=EXP(C(i))
 B(i)=LOG(D(i))
ENDDO
WRITE(6,*)'A1=',A
WRITE(6,*)'B1=',B

DO i=1,10
 A(i)=SIN(C(i))
 B(i)=COS(D(i))
ENDDO
WRITE(6,*)'A2=',A
WRITE(6,*)'B2=',B

END
