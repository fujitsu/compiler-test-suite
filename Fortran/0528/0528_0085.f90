module mod1
type t1
complex(16)::ii =(2,3)
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
if(dmy%ii/=(2._16,3._16)) print *,99
end subroutine
end module

use  mod1
type(ty),allocatable :: obj
allocate(obj)
allocate(t1::obj%cptr)
k=0
select type(p=>obj%cptr)
type is(t1)
  if (abs(p%ii-(2,3))>0.01) print *,9001
  k=1
end select
if (k/=1)print *,990
deallocate(obj)
print *,'pass'
end

