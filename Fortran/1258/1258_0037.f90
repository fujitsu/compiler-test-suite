module m1 
  type t1 
     integer::tv=1
  end type t1 
contains 
  recursive subroutine sub(arg,aa)
    class(*), pointer       :: arg 
    integer :: aa
    class(*),pointer::x
    select type (arg)  
     type is (integer) 
!print *,'test type is integer'
      if (aa /= 1) print *,1001
         aa = 2
         allocate(t1::x)
         call sub(x,aa)          
     type is(t1)
       if (arg%tv/=1)print *,1002
     class default
print *,5555
    end select 
  end subroutine sub 
end module m1 

use m1
integer :: aa=1,aaa=1
    class(*), pointer       :: arg 
allocate(arg,source=aaa)
call sub(arg,aa)
if (aa /= 2) print *,'err',aa
print *,'sngg621t : pass'
end
