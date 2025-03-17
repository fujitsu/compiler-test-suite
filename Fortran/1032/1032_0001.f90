 subroutine x
 end
module m1
logical(8), PARAMETER :: R6ALT1 = merge( .true._8, .false._8, .true. )
logical(2), PARAMETER :: R6ALT2 = merge( .true._2, .false._2, .true. )
contains
subroutine y
    if (R6ALT1)then
    else
      print *,'error-1'
    endif
    if (R6ALT2)then
    else
      print *,'error-2'
    endif
end subroutine
    end
use m1
call y
    if (R6ALT1)then
    else
      print *,'error-11'
    endif
    if (R6ALT2)then
    else
      print *,'error-12'
    endif
print *,'pass'
    end
