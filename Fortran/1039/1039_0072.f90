TYPE Z_TYPE
  integer::Z
END TYPE
TYPE(Z_TYPE) RA(9:10,1:2, 1:2)
TYPE(Z_TYPE) ,POINTER::G3QL
    ALLOCATE (G3QL)
    G3QL=Z_TYPE(3)
    RA(10,2,2)%Z=G3QL% Z
if (RA(10,2,2)%Z/=3)print *,"Error*:",RA(10,2,2)%Z 
print *,'pass'
END 
