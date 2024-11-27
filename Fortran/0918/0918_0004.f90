type ty
integer::t1
endtype ty
integer,pointer::p1
type(ty),target::obj
integer::arr(3)
!$omp threadprivate(obj,p1)
obj%t1=20
  data p1,arr /obj%t1,1,1,2/
if(associated(p1).neqv..true.)print*,"101",associated(p1)
if(any(arr.ne.[1,1,2]))print*,"102"
if(associated(p1))then
if(p1.ne.20)print*,"103"
endif
print*,"PASS"
end

