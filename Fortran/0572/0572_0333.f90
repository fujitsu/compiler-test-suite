integer(kind=8)::a,arr(4),i
i=func(a,arr)
if(i /= 1 )print*,201        
contains
 function func(b,brr)
    integer(kind=8)::b(..),brr(..)
    func =1
    call sub(brr)
    if(bit_size(b) /= 64 )print*,101
    if(bit_size(brr) /=64)print*,102
     print*,'PASS'
    end function

    subroutine sub(c)
    integer*8::c(..) 
    if(bit_size(c) /= 64 )print*,103
    end subroutine
 end
