type ty
integer, allocatable :: ii
end type

type,extends(ty) :: tty
integer :: jj
end type

interface tty
function f1(d1, d2)
real :: d1
real :: d2
real :: f1
end function
end interface

call s1(tty(2,3))
print*,"PASS"

contains
subroutine s1(d1)
class(ty),value :: d1

select type(d1)
 type is(tty)
  if(d1%ii /= 2) print*, 101
  if(d1%jj /= 3) print*, 102

 class default
  print*,"121"
end select
end subroutine
end

function f1(d1, d2)
real :: d1
real :: d2
real :: f1
f1 = d1+d2
print*,"In function f1 !!!"
end function
