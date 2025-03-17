module mod1
type t1
complex(16)::ii(2000) =(2,3)
complex(16)::kk(2000) =(12,13)
contains
final :: prc
end type

type ty
integer :: ii
class(*),allocatable:: cptr   
end type

contains
subroutine prc(dmy)
type(t1) :: dmy
if(any(dmy%ii/=[((2.0_16,3.0_16),i=1,2000)])) print *,99  
!print*,dmy%ii
end subroutine
end module

use  mod1
type(ty),allocatable :: obj
allocate(obj)
allocate(t1::obj%cptr)
k=0
select type(p=>obj%cptr)
type is(t1)
  if (any(abs(p%ii-(2,3))>0.01)) print *,9001
  if (any(abs(p%kk-(12,13))>0.01)) print *,90031
  k=1
end select
if (k/=1)print *,990
deallocate(obj)
print *,'pass'
end

