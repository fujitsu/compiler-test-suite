 call s1
 print *,'pass'
 end
module m1
logical(8), PARAMETER :: &
   R6ALT = merge( .TRUE._8, .FALSE._8, .true. )

logical(8), PARAMETER :: &
   R6 = merge( .FALSE._8, .TRUE._8, .true.)
    end
subroutine s1
use m1
if (.not.R6ALT)write(6,*) "NG"
if (R6)write(6,*) "NG"
end
