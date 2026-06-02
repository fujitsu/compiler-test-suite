integer::a
integer::arr(3:5,2:6)
i=func(a,arr)
if(i /= 1 )print*,201        
contains
 function func(b,brr)
    integer::b(..)
    integer::brr(..)
    func =1
   
    call sub(brr)
    if(size(lbound(b)) /= 0)print*,101
    if(lbound(brr,dim=1) /= 1)print*,103
    if(lbound(brr,dim=2) /= 1)print*,104
    if(size(lbound(brr)) /= 2)print*,105
     print*,'PASS'
    end function

    subroutine sub(c)
    integer::c(..)
     if(lbound(c,dim=1) /= 1)print*,106
     if(lbound(c,dim=2) /= 1)print*,107
     if(size(lbound(c)) /= 2)print*,108
    end subroutine    
 end
