TYPE Z_TYPE
  complex::Z1
  integer::Z2
END TYPE
TYPE(Z_TYPE) ,POINTER::G
    ALLOCATE (G)
    G=Z_TYPE((1,2),3)
if (abs(G%Z1-(1,2))>0.001)print *,"Error-1*:",G%Z1 
if (G%Z2/=3)print *,"Error-2*:",G%Z2
print *,'pass'
END 
