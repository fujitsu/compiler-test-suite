module m
contains
 subroutine sub(a)
      type(*)::a(:)
    if(is_contiguous(a) .neqv. .true.)print*,'101'
    print*,'pass'
  end subroutine 
end module

use m
     integer::a(10)  
     call sub(a)
   end     


