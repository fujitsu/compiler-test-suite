REAL*8 A1(10),A2(10),C(10),D(10),F(10)
DATA C/1,2,3,4,5,6,7,8,9,10/
DATA F/11,12,13,14,15,16,17,18,19,20/

DO i=1,10
A1(i)=LOG(C(i))
C(i)=i+1
ENDDO
WRITE(6,*)'A1=',A1

DO i=1,10
A1(i)=LOG(C(i))
ENDDO
WRITE(6,*)'A1=',A1

DO i=1,10
A1(i)=LOG(C(i))
C(i)=i+1
A2(i)=C(i)
D(i)=A2(i)
A2(i)=LOG(D(i))+SIN(D(i))+COS(D(i))
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2
WRITE(6,*)'D(i)=',D

DO i=1,10
A1(i)=LOG(C(i))
C(i)=C(i)+2
D(i)=C(i)+1
A2(i)=D(i)+SIN(D(i))+COS(D(i))
WRITE(6,*)'A2=',A2
A2(i)=LOG(F(i))
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2

END
