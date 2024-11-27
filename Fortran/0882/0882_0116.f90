program main
type point11 
integer :: tt 
integer :: pp
end type

type,extends(point11):: point1111
integer :: ss 
integer :: dd
end type

type con
class(point1111),pointer:: act 
end type con
type(con):: obj

class(point1111),pointer:: actual 
allocate(actual)
allocate(obj%act)
actual%tt=5
obj%act%tt=6
call sub ((/obj%act,actual/))
contains
subroutine sub(dummy)
class(point1111) ::dummy(2)
print *,dummy(1)%tt
print *,dummy(2)%tt
end subroutine sub
end program 
