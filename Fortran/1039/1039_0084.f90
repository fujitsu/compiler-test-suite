TYPE Z_TYPE
  integer(1)::z1
  integer(2)::z2
  integer(4)::z3
  integer(8)::z4
  real(4)::z5
  real(8)::z6
  real(16)::z7
END TYPE
TYPE(Z_TYPE) ,POINTER::G(:)
    ALLOCATE (G(2))
    G(2)=Z_TYPE(1,2,3,4,5,6,7)
if (G(2)%z1/=1)print *,"Error-1*:",G(2)%z1 
if (G(2)%z2/=2)print *,"Error-2*:",G(2)%z2 
if (G(2)%z3/=3)print *,"Error-3*:",G(2)%z3 
if (G(2)%z4/=4)print *,"Error-4*:",G(2)%z4 
if (abs(G(2)%z5-5)>0.001)print *,"Error-5*:",G(2)%z5 
if (abs(G(2)%z6-6)>0.001)print *,"Error-6*:",G(2)%z6 
if (abs(G(2)%z7-7)>0.001)print *,"Error-7*:",G(2)%z7 
print *,'pass'
END 
