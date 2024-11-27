  type tn
   integer(2)::ii1(3)
   class(*),allocatable::alc
  end type

  class(*),allocatable::base(:)
  class(*),allocatable::a

  allocate(tn::base(3))
  allocate(integer(kind=2)::a)

  select type(base)
   class default
    print*,911

   type is(tn)
    allocate(integer(kind=2)::base(3)%alc)
  end select

  call sub(a, base)

  contains
  subroutine sub(d1, dd2)
  class (*),target::d1
  class (*),target::dd2(:)
  class (*),pointer::ptr
  logical::f

  ptr=>d1
  f=associated(ptr, d1)
  if (.not.f) print *,101

  select type(dd2)
   class default
    print*,912

   type is(tn)
    ptr=>dd2(3)%alc
    f=associated(ptr, dd2(3)%alc)
    if (.not.f) print *,102
  end select
  print *,"PASS"
  end
  end
