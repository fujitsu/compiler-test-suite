  class(*),pointer::a
  class(*),pointer::b

  allocate(integer(kind=2)::a)
  allocate(character(len=3)::b)

  call sub(a, b)

  contains
  subroutine sub(d1, dd2)
  class (*),target::d1
  class (*),target::dd2
  class (*),pointer::ptr
  logical::f

  ptr => d1
  f=associated(ptr, d1)
  if (.not.f) print *,101

  NULLIFY(ptr)
  f = .false.
  ptr => dd2
  f=associated(ptr, dd2)
  if (.not.f) print *,102
  print *,"PASS"
  end
  end
