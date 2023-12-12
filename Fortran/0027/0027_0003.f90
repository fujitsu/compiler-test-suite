
module m
integer,target,private::a(101,102,103,3)
integer,pointer::p(:,:,:,:)=>a
contains
subroutine sss()
if(ubound(a,1)/=101) print *,'err'
a=1
end subroutine
end
use m
call sss()
if (any(p/=1)) print *,101,p(1,1,1,1)
if(ubound(p,1)/=101) print *,'err2'
print *,'OK'
end
