
module m
integer,private,target::a(101,102,103,3)
integer,private       ::b(101,102,103,3)
integer,pointer       ::p(:  ,:  ,:  ,:)
contains
subroutine sss()
if(ubound(a,3)/=103) print *,'err1'
if(ubound(b,1)/=101) print *,'err2'
a(101,102,103,3)=2
p=>a
if(ubound(p,3)/=103) print *,'err3'
if (a(101,102,103,3)/=2) print *,201
end subroutine
end
use m
call sss()
if (p(101,102,103,3)/=2) print *,201
if(ubound(p,3)/=103) print *,'err5'
print *,'OK'
end
