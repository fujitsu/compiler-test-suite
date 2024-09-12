module mod1
type ty
integer :: jj
integer :: ii
end type
type,extends(ty) :: ty1
integer :: kk
end type
interface
function fun1(dmy)
import ty
type(ty),pointer :: dmy
integer :: fun1
end function
end interface
type(ty),pointer :: obj1
type(ty) :: obj2
contains
function fun()
integer :: area
integer :: fun
  integer :: xx
    type(ty),pointer :: rr
      type(ty),pointer :: obj
  allocate(obj)
  xx = fun1(obj)
  fun = xx
  end function
  end

function fun1(dmy)
use mod1,only : ty
type(ty),pointer :: dmy
integer :: fun1
allocate(dmy)
fun1 = 1
end function
use mod1
allocate(obj1)
if (fun()/=1)print *,201
print *,'pass'
end
