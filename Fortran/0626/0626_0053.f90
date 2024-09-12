module mod
  type :: str1
    integer :: iii
  end type
  contains
  subroutine sub01(arg1)
    type(str1),allocatable       :: arg1
      if (arg1%iii/=1)print *,101
  end subroutine
  subroutine sub02(arg1)
    type(str1),allocatable,target     :: arg1
      if (arg1%iii/=1)print *,102
  end subroutine
end module
use mod
    type(str1),allocatable:: arg1
allocate(arg1)
arg1%iii=1
  call       sub01(arg1)
  call       sub02(arg1)
print *,'pass'
end
