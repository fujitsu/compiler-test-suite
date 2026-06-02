module m1
integer,target::a1(3)=[1,2,3]
contains
subroutine ss(x)
integer,target,dimension(:):: x
a1(2)=13
call sss(x)
end subroutine
subroutine sss(x)
integer,target,dimension(:):: x
if (x(2)/=13) print *,201
if (x(3)/=3) print *,202
end subroutine
end
use m1
call ss(a1)
print *,'pass'
end
