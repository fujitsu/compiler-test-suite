module mm
 type typ1
 end type
 interface typ1
  module procedure ppp
 end interface
 contains
 type(typ1) function ppp(ii)
  real,intent(in) :: ii
 end function
end
use mm
type(typ1) x
x = typ1(100.0)
print *,'pass'
end
