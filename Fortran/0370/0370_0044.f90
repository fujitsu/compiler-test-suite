  type ty1
     integer :: i=1
  end type ty1
  class(ty1),allocatable :: a
  class(*),allocatable :: s
  i=1
  allocate(ty1::s)
  select type(s)
  class is (ty1)
     if (s%i.ne.1) print *,'err'
  end select

  print *,'pass'
end
