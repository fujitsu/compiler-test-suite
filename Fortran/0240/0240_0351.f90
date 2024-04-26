call s()
print *,'pass'
end
module set_module
type set
 integer :: aaaaa
end type
end
subroutine s()
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
end
subroutine ex(a,b,c)
implicit none
real, dimension (2,8) :: a,b,c
intent(in) :: a
intent(out) :: b
b = a+c
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
integer j
j=x+y
j=j
end subroutine real_swap
subroutine int_swap(x,y)
implicit none
integer, intent(inout) :: x,y
integer j
j=x+y
j=j
end subroutine int_swap
function set_intersection(a,b)
use set_module
implicit none
type(set) , intent(in) :: a,b
type(set) :: set_intersection
set_intersection%aaaaa = a%aaaaa + b%aaaaa
end function set_intersection
subroutine integer_to_bit (n,b)
implicit none
logical, intent(out) :: n
integer, intent(in) :: b(:)
integer k
k=b(1)
k=k
n=.true.
end subroutine integer_to_bit
