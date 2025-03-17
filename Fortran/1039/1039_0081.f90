TYPE Z_TYPE
  integer(1)::z1
  integer(2)::z2
  integer(4)::z3
  integer(8)::z4
  real(4)::z5
  real(8)::z6
  real(16)::z7
  complex(4)::z8
END TYPE
TYPE(Z_TYPE) ,POINTER::G
    ALLOCATE (G)
    G=Z_TYPE(1,2,3,4,5,6,7,(8,9))
if (G%z1/=1)print *,"Error-1*:",G%z1 
if (G%z2/=2)print *,"Error-2*:",G%z2 
if (G%z3/=3)print *,"Error-3*:",G%z3 
if (G%z4/=4)print *,"Error-4*:",G%z4 
if (abs(G%z5-5)>0.001)print *,"Error-5*:",G%z5 
if (abs(G%z6-6)>0.001)print *,"Error-6*:",G%z6 
if (abs(G%z7-7)>0.001)print *,"Error-7*:",G%z7 
if (abs(G%z8-(8,9))>0.001)print *,"Error-8*:",G%z8 
print *,'pass'
END 
