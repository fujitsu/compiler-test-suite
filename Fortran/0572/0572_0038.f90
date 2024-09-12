module m
contains
 subroutine sub(a)
       type(*)::a(:,:)
        integer::s(2)
    s(1)=size(a,1,4)
    s(2)=size(a,2,4)
    if(s(1) /= 3)print*,102
    if(s(2) /= 5)print*,103
    print*,'pass'
  end subroutine 
end  module m

use m
integer::a(3:5,2:6)
call sub(a)
end        
 
