call test01()
call test02()
print *,'pass'
end

module mod1
interface ifun
module procedure ifunc02
end interface
contains
recursive function ifunc02(i) result(ifun)
character(len=*) i(3)
character(len=len(i)) ifun(3)
intent(in) :: i
if (len(i)>1) then
ifun=ifunc02((/('',j=1,3)/))//i(:)(1:2)//ifunc02((/('z',j=1,3)/))//i(:)(3:3)
else 
ifun=i
end if
return 
end function
end

subroutine test01()
use mod1
character ia(3)*4
ia=ifunc02((/'1257','2267','3337'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
end

module mod2
contains
recursive function ifunc01(i) result(ifun)
character(len=*) i(3)
character(len=len(i)) ifun(3)
intent(in) :: i
ifun=ifunc02((/('',j=1,3)/))//i(:)(1:2)//ifunc02((/('z',j=1,3)/))//i(:)(3:3)
return 
entry ifunc02(i) result(ifun)
ifun=i
end function
end

subroutine test02()
use mod2
character ia(3)*4
ia=ifunc01((/'1257','2267','3337'/))
if (any(ia.ne.(/'12z5','22z6','33z3'/))) write(6,*) "NG"
end

