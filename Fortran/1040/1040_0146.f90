module m
contains
recursive function jfunc01(i) result(ifun)
character(len=*) i(:)
character(len=len(i)) ifun(3)
character(0)::a(3)
intent(in) :: i
ifun=jfunc02(a)
return
entry jfunc02(i) result(ifun)
ifun=i
end function
end
use m
print *,'pass'
end
