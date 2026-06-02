Module m
type ty
integer :: ii
end type
interface gnr
subroutine sub(d1)
 import ty
 class(ty),allocatable :: d1
end subroutine
subroutine sub1(d1)
 import ty
 integer,pointer :: d1
end subroutine
end interface
end module

use m
class(ty),allocatable :: obj
integer ,pointer :: t1
allocate(ty::obj)
allocate(t1)
obj%ii=7
t1=5
call gnr(obj)
call gnr(t1)
  print*,"pass"
end

subroutine sub(d1)
 use m
 class(ty),allocatable :: d1
 select type(d1)
 type is(ty)
  if (d1%ii .ne. 7)print*,"101"
 class default
  print*,"102"
 end select
end subroutine
subroutine sub1(d1)
 use m
 integer,pointer :: d1
 if(d1 .ne. 5)print*,"103"
end subroutine
