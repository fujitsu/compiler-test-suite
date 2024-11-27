 type:: x
  integer(kind=2)::ii1
  class(*),allocatable::x1
  integer(kind=4)::ii2
  class(*),allocatable::x2
 end type

 type(x),target::a
 class (*),pointer::b
 logical::f

 allocate(integer(kind=8)::a%x1)
 allocate(character(len=3)::a%x2)

 b=>a%x1
 f=associated(b, a%x1)
 if (.not.f) print *,101

 NULLIFY(b)
 f = .false.
 b=>a%x2
 f=associated(b, a%x2)
 if (.not.f) print *,102
 print *,"PASS"
 end
