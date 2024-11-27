integer,target::t1=5
integer::x
integer,pointer::p1
!$omp threadprivate(p1)
  data p1 /t1/
  data x /1/
if(associated(p1).neqv..true.)print*,"101",associated(p1)
if(associated(p1))then
if(p1.ne.5)print*,"102"
endif
print*,"PASS"
end

