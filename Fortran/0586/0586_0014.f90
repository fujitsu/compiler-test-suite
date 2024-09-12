type ty
integer :: ii = 3
end type

type,extends(ty) :: tty
integer :: jj = 5
end type

type,extends(tty) :: ttty
integer :: kk = 9
end type

type(ttty),target,save :: trg

class(ty),pointer :: cptr=>trg
class(tty),pointer :: cptr2

type ty3
class(ty),pointer::cptr
class(tty),pointer::cptr2
end type
type(ty3)::obj

data cptr2 /trg/
data obj%cptr ,obj%cptr2 /2*trg/
select type(cptr)
type is(ttty)
   if(cptr%jj .ne. 5) print*,"121"
   if(cptr%kk .ne. 9) print*,"191"
   if(cptr%ii .ne. 3) print*,"192"
class default
  print*,"122"
end select
select type(cptr2)
type is(ttty)
   if(cptr2%jj .ne. 5) print*,"122"
   if(cptr2%kk .ne. 9) print*,"132"
   if(cptr2%ii .ne. 3) print*,"193"
class default
  print*,"123"
end select
select type(A=>obj%cptr)
type is(ttty)
   if(A%jj .ne. 5) print*,"123"
   if(A%ii .ne. 3) print*,"196"
class default
  print*,"124"
end select
select type(A=>obj%cptr2)
type is(ttty)
   if(A%jj .ne. 5) print*,"123"
   if(A%kk .ne. 9) print*,"143"
   if(A%ii .ne. 3) print*,"194"
class default
  print*,"124"
end select
print*,"Pass"
end

