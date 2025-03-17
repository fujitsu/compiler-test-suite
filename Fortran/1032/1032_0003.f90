 call s1
 print *,'pass'
 end
module m1
logical(2), PARAMETER :: &
   R6ALT = merge( .TRUE._2, .FALSE._2, .true. )

logical(2), PARAMETER :: &
   R6 = merge( .FALSE._2, .TRUE._2, .true.)
    end
subroutine s1
use m1
if (.not.R6ALT)write(6,*) "NG"
if (R6)write(6,*) "NG"
end
