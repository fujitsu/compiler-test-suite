module mod01
  interface
    subroutine exsub(iarg5,iarg6)
      import
      procedure(xfunc02) :: iarg5
      procedure(ment02) :: iarg6
    end subroutine
  end interface
  contains
  integer function xfunc02()
    entry ment02()
  end function
end module
use mod01
print *,'pass'
end
