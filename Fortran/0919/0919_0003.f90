complex,target::t1 =(2,3)
!$omp threadprivate(t1)
real,pointer::ptr=>t1%re
real,pointer::ptr2=>t1%im
if(ptr.ne.2)print*,"101"
if(ptr2.ne.3)print*,"102"
print*,"PASS"
end
