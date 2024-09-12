  integer*4,parameter::x(4) =(/23,9,41,10/)
  integer,parameter::k1(1) = maxloc(x,dim=1,mask=.true.,kind=4)
  if(any(maxloc(x,dim=1,mask=.true.,kind=4).ne.[3]))print*,"101"
print *,'pass'
  end
