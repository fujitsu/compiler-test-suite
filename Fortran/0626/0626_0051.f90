module mod
  type :: str1
    integer :: iii
  end type
  contains
  subroutine sub01(arg1)
    type(str1),allocatable,target :: arg1(:)
      if (arg1(2)%iii/=1)print *,101
  end subroutine
end module
use mod
    type(str1),allocatable,target :: arg1(:)
allocate(arg1(2))
arg1(2)%iii=1
  call       sub01(arg1)
print *,'pass'
end
