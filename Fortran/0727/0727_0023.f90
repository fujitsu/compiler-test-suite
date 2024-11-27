call test01()
print *,'pass'
end

module mod01
contains
elemental function mod01_fun1(i) result(ifun)
intent(in) :: i
ifun=i
end function
end 

subroutine test01()
use mod01
integer v(10),a(10,100),b(10,100),c(10,100)
ifunc()=mod01_fun1(1)
a=reshape((/(i,i=1,1000)/),(/10,100/))
if (ifunc().ne.1) write(6,*) "OK"
forall (i=1:10,j=1:100)
b(i,j)=mod01_fun1(a(i,j))
end forall
if (any(a.ne.b)) write(6,*) "OK"
b=0
do i=1,10
do j=1,100
b(i,j)=mod01_fun1(a(i,j))
end do
end do
if (any(a.ne.b)) write(6,*) "OK"
b=0
forall (i=1:10,j=1:100)
b(i:i,j:j)=mod01_fun1(a(i,j))
end forall
if (any(a.ne.b)) write(6,*) "OK"
b=0
forall (i=1:10,j=1:100)
b(i:i,j:j)=mod01_fun1(a(i:i,j:j))
end forall
if (any(a.ne.b)) write(6,*) "OK"
b=0
forall (i=1:10,j=1:100)
v(i)=i
b(v(i):v(i),j:j)=mod01_fun1(a(v(i):v(i),j:j))
end forall
if (any(a.ne.b)) write(6,*) "OK"
end
