  type:: x
    integer(8)::x1
    integer(2),allocatable::x2
  end type

  class (x),allocatable::a
  class (x),pointer   ::b
  class (x),allocatable::c(:)
  class (x),pointer   ::d(:)

  type:: tn
   class (x),allocatable::a
   integer::ii1(2)
   class (x),pointer::b
   integer(kind=2)::ii2(3)
   class (x),pointer::c(:)
   integer(kind=8)::ii3
   class (x),pointer::d(:)
  end type
 
  class(tn),allocatable::base(:)

  allocate(tn::base(3))
  allocate(x::a)
  allocate(x::c(2))
  allocate(x::base(3)%a)
  allocate(x::base(3)%c(3))

  call sub(a,c,base) 
contains
subroutine sub(a,c,base)
  class (x),target::a
  class (x),target::c(:)
  class (tn),target::base(:)

  logical::f

  b => a
  f=associated(b, a)
  if (.not.f) print *,102

  base(2)%b => base(3)%a
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
