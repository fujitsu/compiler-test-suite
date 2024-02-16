module m1
contains
 subroutine s(p,p1,p2,a1,a2,d1,d2,d3,d4,d5,e1,e2,e3,e4,e5)
 integer,allocatable,intent(in),optional::p(:,:)
 integer,allocatable,intent(in),optional::p1(:,:)
 integer,allocatable,intent(in),optional::p2(:,:)
 integer,pointer,intent(in),optional::a1(:,:)
 integer,pointer,intent(in),optional::a2(:,:)
 integer,allocatable,intent(in),optional::d1(:,:)
 integer,allocatable,intent(in),optional::d2(:,:)
 integer,allocatable,intent(in),optional::d3(:,:)
 integer,allocatable,intent(in),optional::d4(:,:)
 integer,allocatable,intent(in),optional::d5(:,:)
 integer,pointer,intent(in),optional::e1(:,:)
 integer,pointer,intent(in),optional::e2(:,:)
 integer,pointer,intent(in),optional::e3(:,:)
 integer,pointer,intent(in),optional::e4(:,:)
 integer,pointer,intent(in),optional::e5(:,:)
 entry      s9(p,p1,p2,a1,a2,d1,d2,d3,d4,d5,e1,e2,e3,e4,e5)
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
