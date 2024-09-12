module m
contains
 subroutine sub(a)
use, intrinsic :: iso_c_binding
       type(*),optional::a(:,:)
       logical::ss
       ss=present(a)
        if(ss .neqv. .true.) print*,'101'
        print*,'pass'
  end subroutine 
end module m

use m
integer::a(5,6)
call sub(a)
end  
