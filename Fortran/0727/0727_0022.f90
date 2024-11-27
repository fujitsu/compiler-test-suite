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
integer a(10,100),b(10,100)
a=reshape((/(i,i=1,1000)/),(/10,100/))
call intersub01(a,b)
if (any(a.ne.b)) write(6,*) "NG"
b=0
call intersub02(a,b)
if (any(a.ne.b)) write(6,*) "NG"
b=0
call intersub03(a,b)
if (any(a.ne.b)) write(6,*) "NG"
b=0
call intersub04(a,b,100)
if (any(a.ne.b)) write(6,*) "NG"
b=0
contains
subroutine intersub01(aa,bb)
integer aa(10,100),bb(10,100)
bb=mod01_fun1(aa)
end subroutine
subroutine intersub02(aa,bb)
integer aa(:,:),bb(:,:)
bb=mod01_fun1(aa)
end subroutine
subroutine intersub03(aa,bb)
integer aa(10,*),bb(10,100)
bb=mod01_fun1(aa(:,:100))
end subroutine
subroutine intersub04(aa,bb,i)
integer aa(10,i),bb(10,i)
bb=mod01_fun1(aa)
end subroutine

end
