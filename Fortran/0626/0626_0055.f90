module mod
  type :: str1
    integer :: iii
  end type
  contains
  subroutine sub01(arg1,arg2,arg3)
    type(str1),allocatable,target       :: arg1,arg2,arg3
      if (arg1%iii/=1)print *,101
      if (arg2%iii/=1)print *,102
      if (arg3%iii/=1)print *,103
  end subroutine
  subroutine sub02(arg1,arg2,arg3)
    type(str1),dimension(:),allocatable,target       :: arg1,arg2,arg3
      if (arg1(2)%iii/=1)print *,201
      if (arg2(2)%iii/=1)print *,202
      if (arg3(2)%iii/=1)print *,203
  end subroutine
end module
use mod
    type(str1),allocatable:: arg1,arg2(:)
allocate(arg1,arg2(2))
arg1%iii=1
arg2(2)%iii=1
  call       sub01(arg1,arg1,arg1)
  call       sub02(arg2,arg2,arg2)
print *,'pass'
end
