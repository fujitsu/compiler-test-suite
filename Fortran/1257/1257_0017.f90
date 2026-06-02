module m1 
  type  ::t1 
!    sequence
  end type t1 
  type , EXTENDS(t1) :: t2 !, bind(c)
!    sequence
    integer :: t2_a=1
  end type t2 
contains 
  recursive subroutine sub(arg,x)
    class(* ), intent(in),pointer :: arg 
    class(*),target  :: x 
    select type (arg)  
    type is (t2)        
      if (arg%t2_a == 1) then 
         arg%t2_a = 2
         call sub(x,x)          
      else 
        print *,'err'
      end if
    end select 
    if (1.eq.2) call sub(x,x)          
  end subroutine sub 
end module m1 

use m1
class(* ),pointer :: aa
type (t2) :: a
type (t1),target  :: x 
allocate(aa,mold=a)
call sub(aa,x)
print *,'pass'
end
