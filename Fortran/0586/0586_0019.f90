type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type(tty),target,save :: trg(5)

class(*),pointer :: cptr
class(*),pointer :: cptr2(:)=>trg
class(*),pointer :: cptr3=>trg(1)
data cptr /trg(1)/


select type(cptr)
type is(tty)
   if(cptr%jj .ne. 5) print*,"121"
class default
  print*,"122"
end select
select type(cptr2)
type is(tty)
   if(cptr2(1)%jj .ne. 5) print*,"121"
class default
  print*,"124"
end select
select type(cptr3)
type is(tty)
   if(cptr3%jj .ne. 5) print*,"121"
class default
  print*,"126"
end select
print*,"Pass"
end

