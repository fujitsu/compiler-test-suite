module mod1
type t1
integer:: ii(100) = 2
integer:: nn(2000) = 2
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
if(any(dmy%ii/=[(2,i=1,100)])) print *,99
end subroutine
end module

use  mod1
type(ty),allocatable :: obj
allocate(obj)
allocate(t1::obj%cptr)
k=0
select type(p=>obj%cptr)
type is(t1)
  if (any(p%ii/=2)) print *,9001
  if (any(p%nn/=2)) print *,90011
  k=1
end select
if (k/=1)print *,990
deallocate(obj)
print *,'pass'
end

