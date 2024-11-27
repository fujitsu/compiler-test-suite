integer,target::t1(5) =[1,2,3,4,5]
integer,pointer::p1(:)
integer::arr(3)
!$omp threadprivate(t1,p1)
  data p1,arr /t1(1:5:2),1,1,2/
if(associated(p1).neqv..true.)print*,"101",associated(p1)
if(any(arr.ne.[1,1,2]))print*,"102"
print*,"PASS"
end

