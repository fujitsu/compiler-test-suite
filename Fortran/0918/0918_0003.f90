type ty
integer::t1
endtype ty
integer,pointer::p1
type(ty),target::obj
integer::arr(3)
!$omp threadprivate(obj)
  data p1,arr /obj%t1,1,1,2/
if(associated(p1).neqv..false.)print*,"101"
if(any(arr.ne.[1,1,2]))print*,"102"
end

