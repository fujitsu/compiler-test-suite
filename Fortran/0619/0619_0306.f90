module nn
type typ1
end type
contains
type(typ1) function ppp(ii)
real,intent(in) :: ii
end function
end
subroutine s0
use nn
type(typ1) x
x = ppp(100.0)
end

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
subroutine s1
use mm
type(typ1) x
x = typ1(100.0)
end


call s1
call s0
print *,'pass'
end
