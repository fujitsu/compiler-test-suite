module mod
  type :: str1
    integer :: iii
  end type
  contains
  subroutine sub01(arg1,arg2,arg3)
    type(str1),allocatable,target       :: arg1,arg2,arg3
      write(11,*)arg1,arg2,arg3
  end subroutine
  subroutine sub02(arg1,arg2,arg3)
    type(str1),dimension(:),allocatable,target       :: arg1,arg2,arg3
      write(12,*)arg1,arg2,arg3
  end subroutine
end module
use mod
    type(str1),allocatable,target:: arg1,arg2(:)
allocate(arg1,arg2(2))
arg1%iii=1
arg2(1)%iii=1
arg2(2)%iii=1
  call       sub01(arg1,arg1,arg1)
  call       sub02(arg2,arg2,arg2)
rewind 11
rewind 12
read(11,*)k1,k2,k3
if (any([k1,k2,k3]/=1))print *,301
read(12,*)k1,k2,k3,k4,k5,k6
if (any([k1,k2,k3,k4,k5,k6]/=1))print *,302
print *,'pass'
end
