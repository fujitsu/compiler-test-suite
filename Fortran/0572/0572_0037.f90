module m
contains
 subroutine sub(a)
       type(*)::a(:,:)
        integer::s(2)
    s(1)=ubound(a,1,4)
    s(2)=ubound(a,2,4)
    if(s(1) /= 3)print*,101    
    if(s(2) /= 5)print*,102
    print*,'pass'
  end subroutine 
end  module

use m
integer::a(3:5,2:6)
call sub(a)

end         
 
