  class (*),allocatable,target::a
  class (*),allocatable,target::b
  class (*),pointer   ::ptr
  class (*),allocatable,target::c(:)
  class (*),allocatable,target::d(:)
  class (*),pointer   ::ptr1(:)
  logical::f

  allocate(integer(kind=2)::a)
  allocate(character(len=7)::b)
  allocate(integer(kind=2)::c(3))
  allocate(character(len=7)::d(4))

  ptr => a
  f=associated(ptr, a)
  if (.not.f) print *,101

  NULLIFY(ptr)
  f = .false.
  ptr => b
  f=associated(ptr, b)
  if (.not.f) print *,102

  NULLIFY(ptr1)
  f = .false.
  ptr1 => c
  f=associated(ptr1, c)
  if (.not.f) print *,103

  NULLIFY(ptr)
  f = .false.
  ptr1 => d
  f=associated(ptr1, d)
  if (.not.f) print *,104
  print*,"PASS"
  end
