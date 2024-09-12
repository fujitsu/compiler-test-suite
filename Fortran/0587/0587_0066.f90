module m
type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type
type(tty),target,save :: trg
end module

module m2
use m
type pp
 class(ty),pointer :: cptr=>trg
 class(*),pointer :: cptr2=>trg
end type
end
use m2

type pp2
type(pp) :: obj(2,3)
end type

type(pp2) :: mobj

select type(cptr=>mobj%obj(2,3)%cptr)
type is(tty)
   if(cptr%jj .ne. 5) print*,"121"
class default
  print*,"122"
end select
select type(cptr=>mobj%obj(2,3)%cptr2)
type is(tty)
   if(cptr%jj .ne. 5) print*,"121"
class default
  print*,"122"
end select

print*,"Pass"
end
