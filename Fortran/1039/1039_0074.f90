TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) ,POINTER::G
    ALLOCATE (G)
    G=Z_TYPE(3)
if (G%Z/=3)print *,"Error*:",G%Z 
print *,'pass'
END 
