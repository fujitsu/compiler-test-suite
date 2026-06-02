module mod01
  procedure(mtest01) :: iproc02
  interface
    subroutine exsub(iarg3)
      import
      procedure(mtest01) :: iarg3
    end subroutine
  end interface
  contains
  subroutine mmm()
    call exsub(iproc02)
  end subroutine
  function mtest01() result(ret)
    integer :: ret
    ret = 1
  end function
end module

subroutine exsub(iarg3)
  use mod01
  procedure(mtest01) :: iarg3
  if ( 1.ne. iarg3()) print *,'ng1'
end subroutine

use mod01
call mmm()
print *,'pass'
end

  function iproc02() result(ret)
    integer :: ret
    ret = 1
  end function
