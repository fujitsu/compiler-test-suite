module m1
contains
 subroutIne s(a1)
 integer,allocatable,intent(in),optional::a1(:)
 entry      s9(a1)
if (present(a1)) then
if (a1(1)/=1) print *,702
endif
end subroutine
end
use m1
call s( )

print *,'pass'
end 
