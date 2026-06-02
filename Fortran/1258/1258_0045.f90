module m1 
  type t1 
     integer::tv=1
  end type t1 
contains 
  recursive subroutine sub(a,arg,aa)
    class(*), pointer,intent(in)       :: a,arg 
    integer :: aa
    class(*),pointer     :: x 
    class(*)    ,pointer    ::y
    class(*)    ,pointer    ::z
      if (associated(a)    ) print *,1000
    select type (arg)  
     type is (integer) 
!print *,'test type is integer'
      if (aa /= 1) print *,1001
         aa = 2
         allocate(t1::x)
         call sub(null(x),x,aa)          
     class is(t1)
       if (arg%tv/=1)print *,1002
      if (aa /= 2) print *,1003
       allocate(y,source='12')
       aa = 3
       call sub(null(y),y,aa)
     type is(character(*))
       if (arg/='12') print *,1003
      if (aa /= 3) print *,1004
       allocate(z,source=(1,2))
       aa = 4
       call sub(null(z),z,aa)
     type is(complex)
       if (arg/=(1,2)) print *,1005
      if (aa /= 4) print *,1006
     class default
print *,5555
    end select 
  end subroutine sub 
end module m1 

use m1
integer,target :: aa=1,aaa=1
    class(*),pointer     :: g 
g=>aaa
call sub(null(g),g  ,aa)
if (aa /= 4) print *,'err',aa
print *,'sngg629t : pass'
end
