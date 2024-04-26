module m1
type(integer*8),target::trg=3
type(integer*8),target::at=4

type ty
integer::it1
 contains
  procedure,nopass ::  func_assign
end type

type,extends(ty) :: ty1
  integer::aa
end type
contains
       function func_assign(t) result(ret)
        type(integer*8),pointer::ret
        type(integer*8),target::t
        ret=>t
       end function
end module

use m1
type(ty1) ::obj1(5)
if(at /= 4) print *,101
open(newunit=obj1(1)%ty%func_assign(at),file='fort.3')
if(at >= -1)print*,"102",obj1
open(newunit=obj1(1)%ty%func_assign(trg),file='fort.4')
if(trg >= -1)print*,"103"
print *,"Pass"
end 
