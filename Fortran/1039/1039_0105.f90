TYPE Z_TYPE
  character,pointer:: x
END TYPE
TYPE(Z_TYPE) ,POINTER::g1
TYPE(Z_TYPE)         ::g2
    ALLOCATE (g1)
    ALLOCATE (g1%x)
    ALLOCATE (g2%x)
 g2%x='x'
 g1=g2
if (g1%x/='x')print *,"Error-1*:",g1%x 
print *,'pass'
END 
