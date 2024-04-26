module m1
contains
subroutine s(prc,k)
procedure()::prc
select case(k)
case (1)
if (abs(sin(.1)-prc(.1))>0.001)print *,101,sin(.1),prc(.1)
case (2)
if (abs(fun(.1)-prc(.1))>0.001)print *,102,fun(.1),prc(.1)
case default
print *,'error'
end select
end subroutine
subroutine s1(d,dp,k)
procedure()::fun,d
procedure(),pointer::p,dp
intrinsic sin
call s(sin,1)
call s(fun,1)
call s(d,k)
call s(dp,k)
p=>sin
call s(p,1)
p=>fun
call s(p,2)
p=>d
call s(p,k)
p=>dp
call s(p,k)
end subroutine
end
subroutine x
use m1
procedure()::fun
intrinsic sin
procedure(),pointer::p
p=>sin
call s1(sin,p,1)
p=>fun
call s1(fun,p,2)
end 
call x
print *,'pass'
end
function fun(r)
fun=r
end
