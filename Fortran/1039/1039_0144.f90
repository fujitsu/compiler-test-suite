TYPE Z_TYPE
  integer,pointer::Z
END TYPE
TYPE ZZ_TYPE
  TYPE(Z_TYPE) ,POINTER::G
END TYPE
TYPE(ZZ_TYPE)::GG1
TYPE(ZZ_TYPE),pointer::GG2
integer,target::t=3
    ALLOCATE (GG1%G)
    ALLOCATE (GG1%G%Z)
    GG1%G=Z_TYPE(t)
if (GG1%G%Z/=3)print *,"Error-1*:",GG1%G%Z 
    ALLOCATE (GG2)
    ALLOCATE (GG2%G)
    GG2%G=Z_TYPE(t)
if (GG2%G%Z/=3)print *,"Error-2*:",GG2%G%Z 
print *,'pass'
END 
