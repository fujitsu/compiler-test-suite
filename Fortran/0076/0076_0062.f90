module m1
contains
 subroutIne s(a1,a2,a3)
 integer(8),pointer,intent(in),optional::a1(:)
 integer(1),pointer,intent(in),optional::a2(:)
 integer(4),pointer,intent(in),optional::a3(:,:)
 entry       e(a1,a2,a3)
if (present(a1)) then
if (a1(-2)/=-2) print *,701
if (a1(-1)/=-1) print *,702
if (ubound(a1,1)/=-1) print *,703
endif
if (present(a2)) then
if (any(a2(:)/=[3,4,5,6])) print *,711
if (ubound(a2,1)/=6) print *,713
endif
if (present(a3)) then
if (any([a3]/=[1,2,3,4,5,6])) print *,721
if (ubound(a3,1)/=2 ) print *,723
if (ubound(a3,2)/=3 ) print *,725
endif
end subroutine
end
use m1
 integer(8),pointer::a1(:)
 integer(1),pointer::a2(:)
 integer(4),pointer::a3(:,:)
allocate(a1(-2:-1), a2(3:6), a3(2,3) )
a1=[-2,-1]
a2=[3,4,5,6]
a3=reshape([1,2,3,4,5,6],[2,3])
call s(a1,a2,a3 )
call s(         )
call e(a1,a2,a3 )
call e(a1,a2,a3 )
call e(         )
call s(a1,a2,a3 )

print *,'pass'
end 
