recursive function jfunc01(i) result(ifun)
 character(len=*) i(:)
 character(len=len(i)) ifun(10)
 character(0)::a(3)
 intent(in) :: i
 ifun=jfunc02(a)
return
entry jfunc02(i) result(ifun)
 ifun=i(1:10)
end function

interface
recursive function jfunc01(i) result(ifun)
 character(len=*) i(:)
 character(len=len(i)) ifun(10)
 character(0)::a(3)
 intent(in) :: i
end function
function jfunc02(i) result(ifun)
 character(len=*) i(:)
 character(len=len(i)) ifun(10)
 intent(in) :: i
end function
end interface

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
