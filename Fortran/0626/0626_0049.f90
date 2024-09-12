module mod
  type :: str1
    integer :: iii
  end type
  contains
  subroutine sub01(arg1)
    type(str1),allocatable,target :: arg1
    class(str1),allocatable,target :: d
    select type(d)
      type is(str1)
      if (arg1%iii/=1)print *,101
    end select
  end subroutine
end module
use mod
    type(str1),allocatable,target :: a
allocate(str1::a)
          a%iii=1
call sub01(a)
print *,'pass'
end
