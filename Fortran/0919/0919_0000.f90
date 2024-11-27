subroutine sub() 
 integer,target::t1(5)=5
  integer,pointer,save::p1(:)
  type ty
    integer,pointer::p2(:)
    integer,pointer::p3
    integer,pointer::p4
    integer::t2
  end type
  type(ty),save,target::obj
  !$omp threadprivate(p1,obj)
  data p1 /t1/
  data obj%p2 /t1(1:5:1)/
  data obj%p3 /t1(1)/
  data obj%p4 /NULL()/
  print*,"PASS"
end

call sub
end
