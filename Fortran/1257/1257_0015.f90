module m1 
  type ::t1 
  end type t1 
  type , EXTENDS(t1) :: t2 
    integer :: t2_a=1
  end type t2 
contains 
  recursive subroutine sub(arg,x)
    class(* ), intent(in),pointer :: arg 
    class(*),target  :: x 
    select type (arg)  
    type is (t2)        
     if (arg%t2_a == 1) then
      arg%t2_a =2
select type (x)
type is (t2)
      x%t2_a =2
end select
      call sub(x,x)          
     else
print *,'pass'
     endif
    end select 
    if (1.eq.2)  call sub(x,x)          
  end subroutine sub 
end module m1 

use m1
class(*) ,pointer :: aa
class(*) ,pointer :: aaa
type(t2) :: a,b
allocate(aa,mold=a)
allocate(aaa,mold=b)
call sub(aa,aaa)
end
