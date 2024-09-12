type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type(tty),target,save :: trg

type ty3
 class(ty),pointer :: cptr=>trg
 class(ty),pointer :: cptr2=>trg
end type

type(ty3)::obj(5)


select type(A=>obj(3)%cptr)
type is(tty)
   if(A%jj .ne. 5) print*,"121"
class default
  print*,"122"
end select
select type(B=>obj(2)%cptr2)
type is(tty)
   if(B%jj .ne. 5) print*,"121"
class default
  print*,"124"
end select
print*,"Pass"
end

