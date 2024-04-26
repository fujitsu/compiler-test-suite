module m1
integer,target::a1(3)=[1,2,3]
contains
subroutine ss(x)
integer,pointer,intent(in),dimension(:):: x
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
integer,pointer,dimension(:):: x
x=>a1
call ss(x)
print *,'pass'
end
