  type x
   integer(2)::ii1(3)
   class(x),allocatable::alc
  end type

  class(x),allocatable::base
  class(x),allocatable::a

  allocate(x::base)
  allocate(x::a)

  select type(base)
   class default
    print*,911

   type is(x)
    allocate(x::base%alc)
  end select

  call sub(a, base)

  contains
  subroutine sub(d1, dd2)
  class (x),target::d1
  class (x),target::dd2
  class (x),pointer::ptr
  logical::f

  ptr=>d1
  f=associated(ptr, d1)
  if (.not.f) print *,101

  select type(dd2)
   class default
    print*,912

   type is(x)
    ptr=>dd2%alc
    f=associated(ptr, dd2%alc)
    if (.not.f) print *,102
  end select
  print *,"PASS"
  end
  end
