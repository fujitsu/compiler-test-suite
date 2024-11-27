  integer,target::a
  class (*),allocatable,target::c
  class (*),pointer::b
  logical::f
  allocate(integer::c)

  b => a
  f=associated(fun(), a)
  if (.not.f) print *,101
  select type(aa=>fun())
   type is(integer)
    f=associated(fun(), a)
    if (.not.f) print *,102

   class default
    print*,911
  end select

  f=associated(fun2(), c)
  if (.not.f) print *,103
  select type(aa=>fun2())
   type is(integer)
    f=associated(fun2(), c)
    if (.not.f) print *,104

   class default
    print*,911
  end select
  print *,"PASS"

  contains
  function fun()
   class(*),pointer::fun
   fun=>a
  end function

  function fun2()
   class(*),pointer::fun2
   fun2=>c
  end function
  end
