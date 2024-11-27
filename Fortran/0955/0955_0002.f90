  class (*),pointer   ::a
  class (*),pointer   ::b
  class (*),pointer   ::c(:)
  class (*),pointer   ::d(:)

  type:: tn
   class (*),pointer   ::a
   integer::ii1(2)
   class (*),pointer   ::b
   integer(kind=2)::ii2(3)
   class (*),pointer   ::c(:)
   integer(kind=8)::ii3(2)
   class (*),pointer   ::d(:)
  end type
  
  type(tn),allocatable::base(:)
  logical::f

  allocate(base(3))
  allocate(integer(kind=2)::a)
  allocate(integer(kind=2)::c(2))
  allocate(integer(kind=4)::base(3)%a)
  allocate(integer(kind=4)::base(3)%c(3))

  b => a
  f=associated(a, b)
  if (.not.f) print *,101
  f=associated(b, a)
  if (.not.f) print *,102

  base(2)%b => base(3)%a
  f=associated(base(3)%a, base(2)%b)
  if (.not.f) print *,103
  f=associated(base(2)%b, base(3)%a)
  if (.not.f) print *,104

  d => c
  f=associated(c, d)
  if (.not.f) print *,105
  f=associated(d, c)
  if (.not.f) print *,106

  base(2)%d => base(3)%c
  f=associated(base(3)%c, base(2)%d)
  if (.not.f) print *,107
  f=associated(base(2)%d, base(3)%c)
  if (.not.f) print *,108

  print *,"PASS"
  end
