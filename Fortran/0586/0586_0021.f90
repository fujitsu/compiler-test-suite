type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type(tty),target,save :: trg

class(*),pointer :: cptr=>trg
class(*),pointer :: cptr2

type ty3
class(*),pointer::cptr
end type
type(ty3)::obj

data cptr2 /trg/
data obj%cptr /trg/

select type(cptr)
type is(tty)
   if(cptr%jj .ne. 5) print*,"121"
class default
  print*,"122"
end select
select type(cptr2)
type is(tty)
   if(cptr2%jj .ne. 5) print*,"122"
class default
  print*,"123"
end select
select type(A=>obj%cptr)
type is(tty)
   if(A%jj .ne. 5) print*,"123"
class default
  print*,"124"
end select
print*,"Pass"
end

