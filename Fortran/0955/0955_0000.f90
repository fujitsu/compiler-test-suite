 type:: x
  integer(8)::x1
 end type
 class (x),pointer   ::a
 class (x),pointer   ::b
 logical::f
 allocate(a)
 b=>a
 f=associated(a, b)
 if (.not.f) print *,101
 
 f=associated(b, a)
 if (.not.f) print *,102

 print *,"PASS"
 end
