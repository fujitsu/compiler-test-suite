use mod
call sub()
print *,'pass'
end
module mod
contains
subroutine sub()
type ty1
integer :: a(10) =1
integer,allocatable :: al
integer,pointer     :: po=>null()
integer :: b(10) =1
integer :: c(10) =1
integer :: d(10) =1
end type
type ty2
type(ty1) :: aaa(10)
end type
type(ty2) :: str(10)
str(1)%aaa(1)%a(1)=1
end subroutine
end
