integer(2)::d
integer(1)::e

i=func(d,e)
if(i /= 1 )print*,201        
PRINT*,'PASS'
contains
 function func(b,c)
   integer(2)::b(..)
   integer(1)::c(..)
    func =1
    call sub(c)
    if(huge(b) /= 32767 )print*,102
    if(huge(c) /= 127 )print*,103
    end function

    subroutine sub(d)
    integer(1)::d(..)
    if(huge(d) /= 127 )print*,103
    end subroutine    

 end
