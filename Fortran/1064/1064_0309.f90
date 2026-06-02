module m1
integer,target::a1(3)=[1,2,3]
contains
subroutine ss(x1,x2)
integer,target,dimension(:):: x1,x2
x1(2)=13
if (x2(1)/=13) print *,201
call sss(x1,x2)
end subroutine
subroutine sss(x1,x2)
integer,target,dimension(:):: x1,x2
if (x1(1)/=1) print *,212
if (x1(2)/=13) print *,222
if (x2(1)/=13) print *,232
if (x2(2)/=3) print *,242
end subroutine
end
use m1
call ss(a1(1:2),a1(2:3))
print *,'pass'
end
