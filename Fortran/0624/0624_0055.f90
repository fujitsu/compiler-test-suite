module mod01
  type ty0
    integer xx
  end type
end module mod01

subroutine sub05(arg)
  use mod01
  class(*),intent(inout) :: arg
  k=0

  select type (arg)
    class is(ty0)
      k=1
    class default
      print *,'fail'
  end select
  if (k/=1)print *,201
end subroutine sub05

program class_sh
  use mod01
  interface
    subroutine sub05(arg)
      use mod01
      class(*),intent(inout) :: arg
    end subroutine sub05
  end interface

  class(*),allocatable :: obj1
  allocate(ty0::obj1)
  call sub05(obj1)
  print *,'pass'
end program class_sh
