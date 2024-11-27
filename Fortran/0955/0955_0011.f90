  type:: x
    integer(8)::x1(2)
    integer(2),allocatable::x2
    class (x),pointer::alc1
    integer(4)::x3(3)
    class (x),pointer::alc2(:)
  end type

  class (x),allocatable::a

  allocate(x::a)
  allocate(x::a%alc1)
  allocate(x::a%alc2(3))

  call sub(a) 

  contains
  subroutine sub(a)
  class (x),target::a
  class (x),pointer::b
  class (x),pointer::c(:)
  logical::f

  b => a
  f=associated(b, a)
  if (.not.f) print *,101

  NULLIFY(b)
  b => a%alc1
  f=associated(b, a%alc1)
  if (.not.f) print *,102

  c => a%alc2
  f=associated(c, a%alc2)
  if (.not.f) print *,103
  print *,"PASS"
  end
  end
