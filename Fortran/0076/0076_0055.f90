module m1
contains
 subroutine s(p,p1,p2,a1,a2)
 integer,allocatable,intent(in),optional::p(:,:)
 integer,allocatable,intent(in),optional::p1(:,:)
 integer,allocatable,intent(in),optional::p2(:,:)
 integer,pointer,intent(in),optional::a1(:,:)
 integer,pointer,intent(in),optional::a2(:,:)
 entry      s9(p,p1,p2,a1,a2)
if (present(p1)) then
if (p1(1,1)/=1) print *,701
if (a1(1,1)/=1) print *,702
endif
end subroutine
end
use m1
call s( )

print *,'pass'
end 
