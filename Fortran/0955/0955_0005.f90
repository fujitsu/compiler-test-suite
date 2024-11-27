 type:: x
  integer(8)::x1
 end type

 class (x),allocatable,target::a
 class (x),pointer::b
 logical::f
 allocate(a)
 
 b=>a
 f=associated(b)
 if (.not.f) print *,101

 NULLIFY(b)
 b=>a
 f=associated(b,a)
 if (.not.f) print *,102
 print *,"PASS"
 end
