 call s1
 print *,'pass'
 end
 module m1
  integer,parameter::z1=1,z2=2,z4=4,z8=8,z16=16
  logical,parameter::t=.true.,f=.false.
  intrinsic ceiling 
 end
 subroutine s1
  use m1
  integer,allocatable::ir(:)
  call RANDOM_SEED(size=k)
  allocate(ir(k));ir=0
  call RANDOM_SEED(put=ir)
  call RANDOM_SEED(get=ir)
  call SYSTEM_CLOCK(COUNT=IC)
  call RANDOM_SEED(put=(/(ic,mm=1,k)/))
  call RANDOM_SEED(get=ir)
  call RANDOM_SEED(put=ir)
end
