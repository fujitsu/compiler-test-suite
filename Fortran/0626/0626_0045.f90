module mod
  type :: str1
    integer :: iii
  end type
  contains
  subroutine sub01(arg1)
    class(*),allocatable,target :: arg1
    select type(arg1)
      type is(str1)
      if (arg1%iii/=1)print *,101
    end select
  end subroutine
end module
use mod
    class(*),allocatable,target :: a
allocate(str1::a)
    select type(a)
      type is(str1)
          a%iii=1
    end select
call sub01(a)
print *,'pass'
end
