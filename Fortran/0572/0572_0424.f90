real(kind=8)::r1
real(kind=4)::r2(4)
        integer::i
i=func(r1,r2)
if(i /= 1 )print*,201        
contains
 function func(dr1,dr2)
real(kind=8)::dr1(..)
real(kind=4)::dr2(..)

    func =1
    call sub(dr2)
    if(maxexponent(dr1) /= 1024)print*,101
    if(maxexponent (dr2) /= 128)print*,102
     print*,'PASS'
    end function

    subroutine sub(dr3)
    real(kind=4)::dr3(..)
    if(maxexponent(dr3) /= 128)print*,103
    end subroutine    
 end
