module m1
TYPE Z_TYPE
  character,pointer:: p2
  character        :: s2
END TYPE
contains
subroutine sub(p1,s1)
TYPE(Z_TYPE) ,POINTER::p1(:)
TYPE(Z_TYPE)         ::s1(2)
    ALLOCATE (p1(2))
    ALLOCATE (p1(2)%p2)
    ALLOCATE (s1(2)%p2)
 p1(2)%p2='x'
 p1(2)%s2='y'
 s1(2)%p2='z'
 s1(2)%s2='w'
if (p1(2)%p2/='x')print *,"Error-1*:" 
if (p1(2)%s2/='y')print *,"Error-2*:" 
if (s1(2)%p2/='z')print *,"Error-3*:" 
if (s1(2)%s2/='w')print *,"Error-4*:" 
end subroutine 
end
use m1
TYPE(Z_TYPE) ,POINTER::p1(:)
TYPE(Z_TYPE)         ::s1(2)
call sub(p1,s1)
print *,'pass'
END 
