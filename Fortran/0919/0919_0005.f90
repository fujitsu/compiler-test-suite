 integer,target::t1=5
 integer::x
 integer,pointer::p1
 integer,pointer::p2
 !$omp threadprivate(p1,p2)
   data p1 /t1/
   data p2 /NULL()/
   data x /1/
  if(associated(p1).neqv..true.)print*,"101",associated(p1)
  if(associated(p2).neqv..false.)print*,"102",associated(p2)
  if(associated(p1))then
  if(p1.ne.5)print*,"102"
   endif
   print*,"PASS"
  end

