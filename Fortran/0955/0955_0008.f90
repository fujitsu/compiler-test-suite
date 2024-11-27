 type:: x
  integer(8)::x1
 end type

 class (*),allocatable,target   ::a
 class (*),pointer   ::b
 logical::f

 allocate(x::a)

 b=>a
 f=associated(b, a)
 if (.not.f) print *,101

 print *,"PASS"
 end
