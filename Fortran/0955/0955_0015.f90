  type:: x
    integer(8)::x1
    integer(2),allocatable::x2
  end type

  class (*),allocatable::a
  class (*),pointer   ::b
  class (*),pointer   ::c(:)
  class (*),pointer   ::d(:)

  type:: tn
   class (*),pointer::a
   integer::ii1(2)
   class (*),pointer::b
   integer(kind=2)::ii2(3)
   class (*),pointer::c(:)
   integer(kind=8)::ii3
   class (*),pointer::d(:)
  end type
 
  type(tn)::base(3)

  allocate(x::a)
  allocate(x::c(2))
  allocate(x::base(3)%a)
  allocate(x::base(3)%c(3))

  call sub(a,c) 

contains
subroutine sub(d1,c)
  class(*),target::d1
  class(*),target::c(:)

  logical::f

  b => d1
  f=associated(b, d1)
  if (.not.f) print *,102

  base(2)%b => base(3)%a
  f=associated(base(3)%a, base(2)%b)
  if (.not.f) print *,103
  f=associated(base(2)%b, base(3)%a)
  if (.not.f) print *,104

  d=>c
  f=associated(d, c)
  if (.not.f) print *,106

  base(2)%d => base(3)%c
  f=associated(base(3)%c, base(2)%d)
  if (.not.f) print *,107
  f=associated(base(2)%d, base(3)%c)
  if (.not.f) print *,108

  print *,"PASS"
  end
  end
