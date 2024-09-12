module mod1
type ty
integer :: ii
contains
procedure :: PRC => add_same
generic   :: operator(<) => PRC
generic   :: gnr => PRC
end type

contains
function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 logical  :: add_same
 add_same  = a%ii < b
end function
end module

module m2
use mod1
type, extends(ty)::ty1
integer :: jj
contains
procedure :: PRC => add_const
end type

contains
function add_const(a,b)
 integer,intent(in) :: b
 class(ty1),INTENT(IN) :: a
 logical  add_const
 add_const = a%jj < b
end function
end module 

use m2
type(ty1) :: obj
obj%jj = 10

if(obj%gnr(50)) then
print*, 'pass'
else
print*, 'Error -1'
endif
call sub(obj < 50 )
contains 
subroutine sub(val)
logical val
if(val) then 
print*, 'pass'
else
print*, 'Error -2'
endif 
end subroutine 
end
