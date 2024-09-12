type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type(tty),target,save :: trg
type(tty),target,save :: trg2(5)

type ty3
 class(*),pointer :: cptr=>trg
 class(*),pointer :: cptr2(:)=>trg2
end type

type(ty3)::obj(5)
select type(A=>obj(3)%cptr)
type is(tty)
   if(A%jj .ne. 5) print*,"121"
class default
  print*,"122"
end select
select type(B=>obj(2)%cptr2(1))
type is(tty)
   if(B%jj .ne. 5) print*,"121"
class default
  print*,"124"
end select
print*,"Pass"
end

