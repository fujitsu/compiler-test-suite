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
print*,dmy%ii
end subroutine
end module

use  mod1
type(ty),allocatable :: obj
allocate(obj)
allocate(real(16)::obj%cptr)
k=0
select type(p=>obj%cptr)
type is(real(16))
  p=2
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr)
type is(real(16))
  if (abs(p-2)>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
deallocate(obj)
print *,'pass'
end

