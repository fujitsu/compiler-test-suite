REAL*8 A(10),B(10),C(10),D(10),E(10),F(10)
integer*4 k 
DATA B/1,2,3,4,5,6,7,8,9,10/
DATA D/1,2,3,4,5,6,7,8,9,10/

DO i=1,10
 C(i)=i
 F(i)=C(i)+1
 A(i)=SIN(C(i))
   if ( i .eq.5 ) goto 10
   D(i)=i
   B(i)=SIN(D(i))
10  E(i)=SIN(F(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
WRITE(6,*)'E=',E

DO i=1,10
 C(i)=i
 A(i)=SIN(C(i))
 k=i
 call sub1(k)
 E(i)=SIN(D(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'E=',E

DO i=1,10
 C(i)=i
 A(i)=SIN(C(i))
 B(i)=fun(i)
 E(i)=SIN(D(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'E=',E

DO i=1,10
 C(i)=i
 A(i)=SIN(C(i))
 B(i)=COS(D(i))
 E(i)=SIN(F(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
WRITE(6,*)'E=',E

END

function fun(k)
integer k
fun=k+2
end function fun

subroutine sub1(k2)
integer*4 k2
k2=k2+1
end 

