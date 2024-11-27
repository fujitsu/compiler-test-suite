integer,target::t1=5
integer,pointer::p1
!$omp threadprivate(t1)
  data p1 /t1/
if(associated(p1).neqv..false.)print*,"101"
end

