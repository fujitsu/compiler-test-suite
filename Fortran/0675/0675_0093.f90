
real*4 x(10),y(10),z(10)
REAL*8 A(10),B(10),C(10),D(10),G(10)
REAL*8 A1(10),A2(10),E,F
REAL*4 A3(10),B1(10)/10*2.0/,C1(10)/10*0.3/

data x,y,z/10*1.,10*1.,10*1./
data m/10/
do 20 i=2,m
x(i)=x(i-1)+0.33339
y(i)=100+y(i-1)
z(i)=exp(x(i))
20 continue
write(6,*) x
write(6,*) y
write(6,*) z

DATA C/1,2,3,4,5,6,7,8,9,10/
DATA D/11,12,13,14,15,16,17,18,19,20/
DO i=1,10
   A(i)=exp(C(i))
   B(i)=exp(D(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
   E=i
   A1(i)=EXP(E)
   F=i+1
   A2(i)=EXP(F)
ENDDO
WRITE(6,*)'A1=',A1
WRITE(6,*)'A2=',A2

DO i=1,10
D(i)=i
B(i)=exp(D(i))
G(i)=exp(C(i))
ENDDO
WRITE(6,*)'B=',B
WRITE(6,*)'E=',G
      
DO i=1,10
   E=i
   A(i)=EXP(E)
   F=i+1
   B(i)=EXP(F)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
      
DO 30 I=1,10
C1(I)=2.0
A3(I)=EXP(B1(I))
30 CONTINUE
write(6,*) a3,c1
STOP
END
