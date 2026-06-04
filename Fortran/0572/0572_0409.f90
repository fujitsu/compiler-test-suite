integer*2::a,i
integer*8::arr
i=func(a,arr)
if(i /= 1 )print*,201        
contains
 function func(b,brr)
    integer*2::b(..)
    integer*8::brr(..)
    func =1
    call sub(brr)
    if(kind(b) /= 2)print*,101
    if(kind(brr) /= 8)print*,102
     print*,'PASS'
    end function

    subroutine sub(c)
    integer*8::c(..)
    if(kind(c) /= 8)print*,103
    end subroutine    
 end
