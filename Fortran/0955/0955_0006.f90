  class (*),allocatable,target::a
  class (*),pointer   ::b
  class (*),allocatable,target::c(:)
  class (*),pointer   ::d(:)

  type:: tn
   class (*),allocatable::a
   integer::ii1(2)
   class (*),pointer   ::b
   integer(kind=2)::ii2(3)
   class (*),allocatable::c(:)
   integer(kind=8)::ii3(2)
   class (*),pointer   ::d(:)
  end type
  
  type(tn),allocatable,target::base(:)
  logical::f

  allocate(base(3))
  allocate(integer(kind=2)::a)
  allocate(integer(kind=2)::c(2))
  allocate(character(len=3)::base(3)%a)
  allocate(character(len=4)::base(3)%c(3))

  b => a
  f=associated(b, a)
  if (.not.f) print *,102

  base(2)%b => base(3)%a
  f=associated(base(2)%b, base(3)%a)
  if (.not.f) print *,104

  d => c
  f=associated(d, c)
  if (.not.f) print *,106

  base(2)%d => base(3)%c
  f=associated(base(2)%d, base(3)%c)
  if (.not.f) print *,108

  print *,"PASS"
  end
