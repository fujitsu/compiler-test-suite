module m1
type x
 integer(8):: t1
 character(:),pointer::p(:,:,:)
 integer(8):: t2
end type
  character(2),target::t(3,2,4)
contains
subroutine chk01(c)
character(:),pointer::c(:,:,:)
 if (len(c)/=2)print *,'801'
if (any(c/='1x'))print *,'error-802'
end subroutine
end
subroutine s1
use m1
type(x):: v1
  character(2),pointer::p(:,:,:)
v1%t1=100
v1%t2=200
t(1:3:2,:,:)='1x'
t(2:2,:,:)='2y'
  p=>t(1:3:2,:,:)
v1%p=>p
if (len(v1%p)/=2)print *,'error-11'
call chk02(v1%p)
call chk01(v1%p)
if (.not.associated(v1%p))print *,'error-12'
if (v1%t2/=200)print *,1002
end subroutine
call s1
print *,'pass'
end
subroutine chk02(c)
character(*)::c(2)
 if (len(c)/=2)print *,'901'
if (any(c/='1x'))print *,'error-902'
end
