module mod1

interface
integer function  bb(a,b)
integer :: a,b
end function
end interface

type base
integer :: ii
contains
procedure , PASS :: prc=>fun1 
end type

type,extends(base) :: deriv1
contains
procedure :: prc=>fun2
end type

contains
subroutine fun1(dmy, bb)  
class(base),intent(in) :: dmy

interface
integer function  bb(c,d)
integer :: c,d
end function
end interface

integer :: jj
jj=dmy%ii
jj=jj-10
end subroutine

subroutine fun2(dmy, bb)
class(deriv1),intent(in) :: dmy
interface
integer function  bb(e,f)
integer :: e,f
end function
end interface
integer :: jj
jj=dmy%ii
if(20 .NE. bb(jj, dmy%ii)) print *, "Error "
print*, "pass" 
end subroutine
end module

use mod1
class(base), pointer :: ptr
type(deriv1), target :: obj
obj%ii=10
ptr=>obj

associate(tp=> ptr)
 call tp%prc(bb)
end associate

end

integer function  bb(a,b)
integer :: a,b
bb=a+b
end function
