module mod
  contains
  subroutine sub01(arg1)
    integer,allocatable,target:: arg1
      if (arg1/=1)print *,101
  end subroutine
  subroutine sub02(arg1)
    integer,allocatable       :: arg1
      if (arg1/=1)print *,102
  end subroutine
end module
use mod
    integer,allocatable       :: arg1
allocate(arg1)
arg1=1
  call       sub01(arg1)
  call       sub02(arg1)
print *,'pass'
end
