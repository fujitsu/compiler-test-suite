module m1

interface gnr
integer function x1(d1)
logical :: d1
end function
end interface

private :: gnr

type gnr
logical :: ch
end type gnr

end module

use m1
write(1,*)gnr(.true.)
print *,'pass'
end
integer function gnr(d1)
logical :: d1
gnr=1
end function
