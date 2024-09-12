module m1
contains
 subroutIne s(a1)
 integer(8),pointer,intent(in),optional::a1(:)
call set(a1)
if (present(a1)) then
if (a1(-12)/=-2+10) print *,701,a1(-12),lbound(a1),ubound(a1)
if (a1(-11)/=-1+10) print *,702,a1(-11)
if (ubound(a1,1)/=-11) print *,703
endif
end subroutine
subroutine set(a1)
 integer(8),pointer,optional::a1(:)
if (present(a1)) then
allocate(a1(-12:-11) )
a1=[-2,-1]+10
endif
end subroutine
end
use m1
 integer(8),pointer::a1(:)
allocate(a1(-2:-1) )
a1=[-2,-1]
call s(a1 )

print *,'pass'
end 
