TYPE Z_TYPE
  integer::Z
END TYPE
TYPE ZZ_TYPE
  TYPE(Z_TYPE) ,POINTER::G
END TYPE
TYPE(ZZ_TYPE)::GG1
TYPE(ZZ_TYPE),pointer::GG2
    ALLOCATE (GG1%G)
    GG1%G=Z_TYPE(3)
if (GG1%G%Z/=3)print *,"Error-1*:",GG1%G%Z 
    ALLOCATE (GG2)
    ALLOCATE (GG2%G)
    GG2%G=Z_TYPE(3)
if (GG2%G%Z/=3)print *,"Error-2*:",GG2%G%Z 
print *,'pass'
END 
