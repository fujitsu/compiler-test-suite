module m1
integer,allocatable::arr,brr
private ::brr
contains
subroutine m1_sub()
end subroutine
end

module m2
use m1
private ::arr
contains
subroutine m2_suba()
allocate(arr)
end subroutine
subroutine m2_sub()
arr=1
end subroutine
subroutine m2_subb()
arr=2
call m2_sub()
if (arr.ne.1) print *,'err'
end subroutine
end

use m1
use m2
call m1_sub()
call m2_suba()
call m2_subb()
print *,'pass'
end

