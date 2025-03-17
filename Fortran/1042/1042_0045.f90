module mdef
contains
recursive function jfunc01(i) result(ifun)
 character(len=*) i(10)
 character(len=len(i)) ifun(10)
 character(0)::a(3)
 intent(in) :: i
 ifun=jfunc02(a)
return
entry jfunc02(i) result(ifun)
 ifun=i
end function
end module

use mdef
character(len=10):: i(10)
character(len=len(i)) rr(10)
i='1234567890'
rr= jfunc01(i)
if ( .true. ) then
 print *,'pass'
else
 print *,'ng'
 print *,rr
endif
end
