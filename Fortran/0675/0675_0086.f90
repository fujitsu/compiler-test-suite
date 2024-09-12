REAL*8 A1(10),A2(10),C(10),D(10),E(10),F(10)
DATA C/1,2,3,4,5,6,7,8,9,10/
DATA D/10,11,12,13,14,15,16,17,18,19/
DATA F/11,12,13,14,15,16,17,18,19,20/

DO i=1,10
A1(i)=EXP(C(i))
C(i)=i+1
ENDDO
WRITE(6,*)'A1=',A1

DO i=1,10
A1(i)=EXP(C(i))
A2(i)=EXP(A1(i)-A1(i)+C(i)+100)
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2

DO i=1,10
A1(i)=EXP(C(i))
C(i)=i+1
A2(i)=C(i)
E(i)=A2(i)
A2(i)=EXP(D(i))
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2
WRITE(6,*)'E(i)=',E

DO i=1,10
A1(i)=EXP(C(i))
C(i)=C(i)+2
D(i)=C(i)+1
A2(i)=D(i)
WRITE(6,*)'A2=',A2
A2(i)=EXP(F(i))
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2

END
