 call s1
 print *,'pass'
 end
module m1
INTEGER, PARAMETER :: R12 = selected_real_kind(p=12)

INTEGER, PARAMETER :: R6PREF = selected_real_kind(p=6)

logical, PARAMETER :: &
   R6ALT = merge( KIND(1.d+0)==8, KIND(1.)==8, KIND(1.)==R12 )

logical, PARAMETER :: &
   R6 = merge( R6PREF==4, R6ALT, R6PREF/=R12 )
    end
subroutine s1
use m1
if (R12/=8)write(6,*) "NG"
if (R6PREF/=4)write(6,*) "NG"
if (R6ALT)write(6,*) "NG"
if (.not.R6)write(6,*) "NG"
end
