  type:: x
    integer(8)::x1
    integer(2),allocatable::x2
  end type

  class (*),pointer   ::a
  class (*),pointer   ::b
  class (*),pointer   ::c(:)
  class (*),pointer   ::d(:)
  class (*),allocatable,target::e

  type:: tn
   class (*),pointer::a
   integer::ii1(2)
   class (*),pointer::b
   integer(kind=2)::ii2(3)
   class (*),pointer::c(:)
   integer(kind=8)::ii3
   class (*),pointer::d(:)
   integer(kind=4)::ii4
   class (*),allocatable::e
  end type
  
  type(tn),target::base(3)
  logical::f

  allocate(x::a)
  allocate(x::c(2))
  allocate(x::base(3)%a)
  allocate(x::base(3)%c(3))
  allocate(x::e)
  allocate(x::base(3)%e)

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

  d=>c
  f=associated(c, d)
  if (.not.f) print *,105
  f=associated(d, c)
  if (.not.f) print *,106

  base(2)%d => base(3)%c
  f=associated(base(3)%c, base(2)%d)
  if (.not.f) print *,107
  f=associated(base(2)%d, base(3)%c)
  if (.not.f) print *,108

  NULLIFY(b)
  f = .false.
  b => e
  f=associated(b, e)
  if (.not.f) print *,109

  NULLIFY(base(2)%b)
  f = .false.
  base(2)%b => base(3)%e
  f=associated(base(2)%b, base(3)%e)
  if (.not.f) print *,110
  print *,"PASS"
  end
