integer::a,i
real::arr(4),d
i=func(a,d,arr)
if(i /= 1 )print*,201        
contains
 function func(b,e,brr)
    integer::b(..)
    real::e,brr(..)
    func =1
    call sub(brr)
    if(digits(b) /= 31 )print*,101
    if(digits(e) /=24)print*,102
    if(digits(brr) /=24)print*,103
     print*,'PASS'
    end function

    subroutine sub(c)
    real::c(..)
    if(digits(c) /= 24 )print*,103
    end subroutine    
 end
