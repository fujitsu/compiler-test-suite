module m1

private :: gnr

type gnr
logical :: ch
end type gnr

end module

use m1
if (gnr(.true.) /=3) print *,101

print *,'pass'
end
function gnr(x)
logical::x
if (.not.x) print *,101
gnr=3
end
