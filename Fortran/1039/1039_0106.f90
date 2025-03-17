TYPE Z_TYPE
  character,pointer:: p2
  character        :: s2
END TYPE
TYPE(Z_TYPE) ,POINTER::p1
TYPE(Z_TYPE)         ::s1
    ALLOCATE (p1)
    ALLOCATE (p1%p2)
    ALLOCATE (s1%p2)
 p1%p2='x'
 p1%s2='y'
 s1%p2='z'
 s1%s2='w'
if (p1%p2/='x')print *,"Error-1*:" 
if (p1%s2/='y')print *,"Error-2*:" 
if (s1%p2/='z')print *,"Error-3*:" 
if (s1%s2/='w')print *,"Error-4*:" 
print *,'pass'
END 
