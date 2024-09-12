module m1
 contains
  subroutine ss(d,k,n)
    integer,optional:: d(:)
    if (k==1) then
       if (present(d)) then
         if (any(ubound(d)/=3) ) print *,103,n
       else
         print *,101,n
       endif
    else
       if (present(d)) then
         print *,102,n
       endif
    endif
  end subroutine
end
subroutine s1
use m1
    integer,pointer :: p1(:)
    integer,allocatable::a1(:)
  type x
    integer,pointer :: p1(:)
    integer,allocatable::a1(:)
  end type
  type(x):: v
    p1=>null()
    v%p1=>null()
    call ss(p1,0,1001)
    call ss(a1,0,1002)
    call ss(v%p1,0,1003)
    call ss(v%a1,0,1004)
  allocate( p1(3) )
  allocate( a1(3) )
  allocate( v%p1(3) )
  allocate( v%a1(3) )
    call ss(p1,1,2001)
    call ss(a1,1,2002)
    call ss(v%p1,1,2003)
    call ss(v%a1,1,2004)
 end
call s1
print *,'pass'
end
   
    


       
    

