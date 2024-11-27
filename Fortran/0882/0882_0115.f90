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
class(point1111),pointer:: actual 
end type con
type(con):: obj

allocate(obj%actual)
allocate(obj%act)
obj%actual%tt=18
obj%act%tt=20
call sub ((/obj%act,obj%actual/))
contains
subroutine sub(dummy)
class(point1111) ::dummy(2)
print *,dummy(1)%tt
print *,dummy(2)%tt
end subroutine sub
end program 
