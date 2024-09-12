module m1
contains
 subroutIne s(a1,a2,a3)
 integer(8),pointer,intent(in),optional::a1(:)
 integer(1),pointer,intent(in),optional::a2(:)
 integer(4),pointer,intent(in),optional::a3(:,:)
 entry       e(a1,a2,a3)
call set(a1,a2,a3)
if (present(a1)) then
if (a1(-12)/=-2+10) print *,701,a1(-12),lbound(a1),ubound(a1)
if (a1(-11)/=-1+10) print *,702,a1(-11)
if (ubound(a1,1)/=-11) print *,703
endif
if (present(a2)) then
if (any(a2(:)/=[3,4,5,6]+10)) print *,711
if (ubound(a2,1)/=16) print *,713
endif
if (present(a3)) then
if (any([a3]/=[1,2,3,4,5,6]+10)) print *,721
if (ubound(a3,1)/=12 ) print *,723
if (ubound(a3,2)/=13 ) print *,725
endif
end subroutine
subroutine set(a1,a2,a3)
 integer(8),pointer,optional::a1(:)
 integer(1),pointer,optional::a2(:)
 integer(4),pointer,optional::a3(:,:)
if (present(a1)) then
allocate(a1(-12:-11), a2(13:16), a3(11:12,11:13) )
a1=[-2,-1]+10
a2=[3,4,5,6]+10
a3=reshape([1,2,3,4,5,6],[2,3])+10
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
