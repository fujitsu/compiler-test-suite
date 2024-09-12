module m
contains
 subroutine sub(a)
       type(*)::a(:,:)
        integer::s(2)
    s(1)=lbound(a,1,4)
    s(2)=lbound(a,2,4)
    if(s(1) /= 1)print*,101    
    if(s(2) /= 1)print*,102
    print*,'pass'
  end subroutine 
end module

use m

integer::a(3:5,2:6)
call sub(a)
end        
