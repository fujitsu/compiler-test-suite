real::a,arr(4)
integer::i
i=func(a,arr)
if(i /= 1 )print*,201        
contains
 function func(b,brr)
    real::b(..),brr(..),r
    r=1.19209290E-07
    func =1
    call sub(brr)
    if(epsilon(b) /= r )print*,101
    if(epsilon(brr) /=r)print*,102
     print*,'PASS'
    end function

    subroutine sub(c)
    real::c(..),r1
    r1=1.19209290E-07

    if(epsilon(c) /= r1 )print*,103
    end subroutine    
 end
