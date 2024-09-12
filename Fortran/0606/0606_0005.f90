module mod1
type ty
integer :: ii
contains
procedure :: PRC => add_same
generic   :: operator(>) => PRC
generic   :: gnr => PRC
end type

type, extends(ty)::ty1
integer :: jj
contains
procedure , NOPASS :: add_same
procedure :: func
generic   :: operator(>) => func 
generic   :: gnr =>  add_same, func 
end type

contains

function func(a,b)
 class(ty1),INTENT(IN) :: a
 real, INTENT(IN) :: b
 logical  :: func
 func = a%ii > b
end function

function add_const(a,b)
 integer,intent(in) :: b
 class(ty1),INTENT(IN) :: a
 logical  add_const
 add_const = a%ii > b
 print *," add_const Operator(>) "
end function

function add_same(a,b)
 class(ty),INTENT(IN) :: a
 integer, INTENT(IN) :: b
 logical  :: add_same
 add_same  = a%ii > b
end function
end module

use mod1
type(ty1) :: obj
obj%ii = 10
call sub(obj > 5 )
if(obj%gnr(5)) then 
print*, 'pass'
else 
print*, 'Error -1'
endif
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
