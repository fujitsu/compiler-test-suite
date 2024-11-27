module m1
type ty
 integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type(tty),target,save :: trg

type ty3
 class(ty),pointer :: cptr
 class(*),pointer :: cptr2
end type
integer,parameter::m =1
type(ty3)::obj(3) = [(ty3(trg,trg),l=1,5,m+1)]

end module

use m1
call sub
contains
subroutine sub
select type(A=>obj(1)%cptr)
type is(tty)
   if(A%ii.ne. 3) print*,"121"
class default
  print*,"122"
end select
select type(A=>obj(3)%cptr2)
type is(tty)
   if(A%ii.ne. 3) print*,"122"
class default
  print*,"122"
end select
print*,"Pass"
end
end

