TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) RA(2)
TYPE(Z_TYPE) ,POINTER::G3QL
    ALLOCATE (G3QL)
    G3QL=Z_TYPE(3)
    RA(2)%Z=G3QL% Z
if (RA(2)%Z/=3)print *,"Error*:",RA(2)%Z 
print *,'pass'
END 
