module set_module
type set
 integer ii
end type
end
use set_module
interface
subroutine ex(a,b,c)
implicit none
real, dimension (2,8) :: a,b,c
intent(in) :: a
intent(out) :: b
end subroutine ex
function why (t,f)
implicit none
logical, intent(in) :: t,f
logical :: why
end function why
end interface
interface swap
subroutine real_swap(x,y)
implicit none
real , intent(inout) :: x,y
end subroutine real_swap
subroutine int_swap(x,y)
implicit none
integer, intent(inout) :: x,y
end subroutine int_swap
end interface swap
interface operator (*)
function set_intersection(a,b)
use set_module
implicit none
type(set) , intent(in) :: a,b
type(set) :: set_intersection
end function set_intersection
end interface operator(*)
interface assignment(=)
subroutine integer_to_bit (n,b)
implicit none
logical, intent(out) :: n
integer, intent(in) :: b(:)
end subroutine integer_to_bit
end interface assignment(=)

type(set) :: xx,xy
real, dimension (2,8) :: xa,xb,xc
real :: r1,r2
integer :: arr(10)
logical :: l
arr=1
l=arr
if (l.neqv..false.) print *,'err'
xa=1
xc=2
call ex(xa,xb,xc)
if (xb(1,1).ne.3) print *,'err'
if (why(.false.,.false.).neqv..false.) print *,'err'
print *,'pass'
r1=1.0_4
call swap(r1,r2)
if (int(r2).ne.int(1.0_4)) print *,'err'
ii=10
call swap(ii,ij)
if (ij.ne.ii+10) print *,'err'
xx%ii=2
xy%ii=100
xx=xx*xy
if (xx%ii.ne.201) print *,'err'
end

subroutine ex(a,b,c)
implicit none
real, dimension (2,8) :: a,b,c
intent(in) :: a
intent(out) :: b
b=a+c
end subroutine ex
function why (t,f)
implicit none
logical, intent(in) :: t,f
logical :: why
why = t
why = f
end function why

subroutine real_swap(x,y)
implicit none
real , intent(inout) :: x,y
y=x
end subroutine real_swap
subroutine int_swap(x,y)
implicit none
integer, intent(inout) :: x,y
y=x+10
end subroutine int_swap
function set_intersection(a,b)
use set_module
implicit none
type(set) , intent(in) :: a,b
type(set) :: set_intersection
set_intersection%ii= a%ii*b%ii+1
end function set_intersection

subroutine integer_to_bit (n,b)
implicit none
logical, intent(out) :: n
integer, intent(in) :: b(:)
integer i
i=b(1)
i=i
n=.false.
end subroutine integer_to_bit
