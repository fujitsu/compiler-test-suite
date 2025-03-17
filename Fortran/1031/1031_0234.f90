module m1
intrinsic KIND
end
module m2
use m1,COS=>KIND
contains
subroutine xx
if (COS(0.0)/=4)print *,'error-2'
end subroutine
end 
use m2
if (COS(0.0)/=4)print *,'error-1'
call xx
print *,'pass'
end
