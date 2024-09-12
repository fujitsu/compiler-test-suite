module m1
type(real*8),target::trg=3.14
type(real*8),target::at=3.4

type ty
integer::it1
 contains
  procedure,nopass ::  func_assign
end type

type,extends(ty) :: ty1
  integer::aa
end type
type,extends(ty1) :: ty2
  integer::aa1
end type
type,extends(ty2) :: ty3
  integer::aa2
end type
contains
       function func_assign(t) result(ret)
        type(real*8),pointer::ret
        type(real*8),target::t
        ret=>t
       end function
end module

use m1
type(ty) ::obj(3)
type(ty1) ::obj1(1)
type(ty2) ::obj2
type(ty3) ::obj3(5)
type(ty3) ::obj3_a(5,5)
if(at /= 3.4) print *,101
obj1%ty%func_assign(at)=13.44
if(at /= 13.44) print *,102
obj(1)%func_assign(trg)=1000.10001
if(trg /= 1000.10001) print *,103
obj2%ty1%ty%func_assign(at)=15.00
if(at /= 15.00) print *,104
obj3(5)%ty2%ty1%ty%func_assign(at)=15.00
if(at /= 15.00) print *,104
obj3_a(1:5,2:4)%ty2%ty1%ty%func_assign(at)=15.00
if(at /= 15.00) print *,105
print *,"Pass"
end 
