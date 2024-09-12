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
function fun(a,b)
real*8 a(100),b(100),c(100)
DO i=1,100
b(i)=SIN(a(i))
C(i)=SIN(a(i)+2_8)+b(i)
ENDDO
fun=b(2)+c(10)
WRITE(6,*)"b=",b
WRITE(6,*)"c=",c
end function
