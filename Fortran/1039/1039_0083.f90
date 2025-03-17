TYPE Z_TYPE
  character x
END TYPE
TYPE(Z_TYPE) ,POINTER::g1(:)
TYPE(Z_TYPE)         ::g2(2)
    ALLOCATE (g1(2))
 g2(2)%x='x'
 g1(2)=g2(2)
if (g1(2)%x/='x')print *,"Error-1*:",g1(2)%x 
print *,'pass'
END 
