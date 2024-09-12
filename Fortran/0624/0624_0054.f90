module types
type base_type
private
integer :: i
integer, private :: j
integer, public :: k
end type base_type
type, extends(base_type) :: my_type
private
integer :: l
integer, public :: m
end type my_type
contains
subroutine another_sub( x1 , x2 , x3)
Type (base_type):: x1
integer::x2
integer::x3
end subroutine
end module types

subroutine sub
use types
type (my_type) :: x
call another_sub( &
x%base_type, &
x%base_type%k, &
x%k )
end subroutine sub

call sub
print *,'pass'
end
