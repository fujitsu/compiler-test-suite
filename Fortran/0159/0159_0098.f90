module m1
integer,allocatable::arr,brr
contains
subroutine m1_subb()
allocate(brr)
brr=1
end subroutine
subroutine m1_sub()
brr=brr+3
end subroutine
subroutine m1_suba()
if (brr.ne.4) print *,'erra'
end subroutine
subroutine m1_sub_arr1()
arr=arr+22
end subroutine
subroutine m1_sub_arr()
if (arr.ne.25) print *,'errb'
end subroutine
end

module xx
use m1,only:crr=>arr
end

module m2
use m1
use xx
private ::crr
contains
subroutine m2_subb()
allocate(crr)
crr=1
end subroutine
subroutine m2_sub()
crr=arr+1
end subroutine
subroutine m2_suba()
if (crr.ne.3) print *,'err'
end subroutine
end

use m1
use m2
call m1_subb()
call m1_sub()
call m1_suba()
call m2_subb()
call m2_sub()
arr=arr+1
call m2_suba()
call m1_sub_arr1()
call m1_sub_arr()
print *,'pass'
end

