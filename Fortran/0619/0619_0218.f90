 call s1
 print *,'pass'
 end
module m1
logical, PARAMETER :: &
   R2 = merge( .true., .false.    , .false.)
    end
subroutine s1
use m1
if (R2)call errtra
end
