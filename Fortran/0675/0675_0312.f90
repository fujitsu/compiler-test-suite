interface
function fun(a,b) result(k)
real*8 , intent(in) :: a(100),b(100)
real*8 :: k(100)
end function fun
end interface
REAL*8 a(100),b(100),d(100),e(100)
DO i=1,100
a(i)=i**i+3_8
b(i)=i**i
ENDDO
d=fun(a,b)
DO j=1,100
e(j)=EXP(d(j))
enddo
write(6,*)"d=",d
write(6,*)"e=",e
end
recursive function fun(a,b) result(k)
real*8 a(100),b(100),c(100),d(100),k(100)
DO i=1,100
b(i)=SIN(a(i))
C(i)=SIN(a(i)+2_8)+b(i)
ENDDO
k=b+c
WRITE(6,*)"b=",b
WRITE(6,*)"c=",c
if(a(1) .eq. 5_8) return
a(1)=5_8
d=fun(a,b)
write(6,*)"d=",d
end function fun
