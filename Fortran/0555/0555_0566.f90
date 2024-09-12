module mod1
type base
integer :: ii
contains
procedure , NOPASS :: prc=>fun1 
end type

type,extends(base) :: deriv1
contains
procedure , NOPASS:: prc=>fun2
end type

contains
subroutine fun1(bb)  
  interface
    integer function  bb(c,d)
      integer :: c,d
    end function
  end interface
integer :: jj
jj=10
if(bb(jj,jj) .NE. 20) print *, "Err-1" 
print*, "PASS"
end subroutine

subroutine fun2(bb)
  interface
    integer function  bb(e,f)
      integer :: e,f
    end function
  end interface
integer :: jj
jj=10 
if(bb(jj,jj) .NE. 20) print *, "Err-2" 
print*, "PASS"
end subroutine
end module


use mod1
interface
integer function  cc(a,b)
integer :: a,b
end function
end interface
class(base), pointer :: ptr
type(deriv1), target :: obj
obj%ii=10
ptr=>obj
call ptr%prc(cc)
end

integer function  bb(a,b)
integer :: a,b
bb=a+b
end function

integer function cc(a,b)
integer :: a,b
cc=a+b
end function
