real(kind=8)::r1
real(kind=16)::r2
        integer::i
i=func(r1,r2)
if(i /= 1 )print*,201        
contains
 function func(dr1,dr2)
real(kind=8)::dr1(..)
real(kind=16)::dr2(..)
    func =1
    call sub(dr2)
    if(minexponent(dr1) /= -1021)print*,101
    if(minexponent(dr2) /= -16381)print*,102
    print*,'PASS'
    end function

    subroutine sub(dr3)
    real(kind=16)::dr3(..)
    if(minexponent(dr3) /= -16381)print*,103
    end subroutine    
 end
