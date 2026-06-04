module mod1
type ty
integer :: ii
contains
procedure :: PRC => add_same
procedure, pass(a) :: add_same_1 
generic :: operator(>) => add_same_1, PRC
end type

type, extends(ty)::ty1
integer :: jj
contains
procedure :: PRC => add_const
generic, PUBLIC :: operator(>) => PRC
end type

contains

function add_const(a,b)
 integer,intent(in) :: b
 class(ty1),INTENT(IN) :: a
 logical  add_const
 add_const = a%ii > b
end function

function add_same_1(b,a)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 logical  :: add_same_1
 add_same_1  = a%ii > b
end function

function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 logical  :: add_same
 add_same  = a%ii > b
end function
end module

use mod1

class(ty), pointer :: ptr
type(ty1), target :: obj
obj%ii = 10
ptr=>obj
call sub(ptr > 5 )
contains 
subroutine sub(val)
logical val
if(val) then 
print*, 'pass'
else
print*, 'Error'
endif 
end subroutine 
end
