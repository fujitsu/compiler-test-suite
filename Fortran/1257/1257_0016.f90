module m1 
  type  ::t1 
!    sequence
  end type t1 
  type , EXTENDS(t1) :: t2 !, bind(c)
!    sequence
    integer :: t2_a=1
  end type t2 
contains 
  recursive subroutine sub(arg,x,yyy)
    integer :: yyy
    class(* ), intent(in),pointer :: arg 
!    type(t1) :: x 
    class(*),target,optional  :: x 
!    select type (w=>arg)  
    select type (arg)  
    type is (t2)        
      if (arg%t2_a == 1) then 
         arg%t2_a = 2
         call sub(x,x,1)          
      end if
    end select 
    if (1.eq.2)      call sub(x,x,1)          
  end subroutine sub 
end module m1 

use m1
class(*),pointer     :: aa,aaa
type(t2) :: a
allocate(aa,mold=a)
a%t2_a=2
allocate(aaa,mold=a)
call sub(arg=aa,x=aaa,yyy=2)
select type (aa)
type is (t2)
if (a%t2_a /= 2) print *,'err',a%t2_a
CLASS DEFAULT
print *,'err DEFAULT'
end select
print *,'pass'
end
