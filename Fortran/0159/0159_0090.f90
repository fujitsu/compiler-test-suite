module m1
integer::arr,brr
private ::brr
contains
subroutine m1_subb()
brr=1
end subroutine
subroutine m1_sub()
brr=brr+2
end subroutine
subroutine m1_suba()
if (brr.ne.3) print *,'err'
end subroutine
subroutine m1_sub_arr()
if (arr.ne.2) print *,'err'
end subroutine
end

module m2
use m1
private ::arr
contains
subroutine m2_subb()
arr=1
end subroutine
subroutine m2_sub()
arr=arr+1
end subroutine
subroutine m2_suba()
if (arr.ne.2) print *,'err'
end subroutine
end

use m1
use m2
call m1_subb()
call m1_sub()
call m1_suba()
call m2_subb()
call m2_sub()
call m2_suba()
call m1_sub_arr()
print *,'pass'
end

