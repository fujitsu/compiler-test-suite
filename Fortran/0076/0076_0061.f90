module m1
contains
 subroutIne s(p1,a1)
 integer,allocatable,intent(in),optional::p1(:)
 integer,contiguous,pointer,intent(in),optional::a1(:)
 entry      s9(p1,a1)
if (present(p1)) then
if (p1(1)/=1) print *,701
if (a1(1)/=1) print *,702
endif
end subroutine
end
use m1
call s( )

print *,'pass'
end 
