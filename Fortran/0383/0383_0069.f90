module mod
  interface
  subroutine msub() bind(C)
  end subroutine
  function xfunc01() result(ret) bind(C)
    integer :: ret
  end function
  integer function xfunc02() bind(C)
  end function
  end interface
end module

module mod01
  use mod
  procedure(msub) :: iproc01
  procedure(msub) :: iproc01_2
  procedure(xfunc01) :: iproc02
  procedure(xfunc01) :: iproc02_2
  procedure(xfunc02) :: iproc03
  procedure(xfunc02) :: iproc03_2
  interface
    subroutine exsub(iarg1,iarg2,iarg3,iarg4,iarg5,iarg6)
      import
      procedure(msub) :: iarg1
      procedure(msub) :: iarg2
      procedure(xfunc01) :: iarg3
      procedure(xfunc01) :: iarg4
      procedure(xfunc02) :: iarg5
      procedure(xfunc02) :: iarg6
    end subroutine
  end interface
  contains
  subroutine mmm()
    call exsub(iproc01,iproc01_2,iproc02,iproc02_2,iproc03,iproc03_2)
  end subroutine
end module

subroutine exsub(iarg1,iarg2,iarg3,iarg4,iarg5,iarg6)
  use mod01
  procedure(msub) :: iarg1
  procedure(msub) :: iarg2
  procedure(xfunc01) :: iarg3
  procedure(xfunc01) :: iarg4
  procedure(xfunc02) :: iarg5
  procedure(xfunc02) :: iarg6
  call iarg1()
  call iarg2()
  if ( 1.ne. iarg3()) print *,'ng1'
  if ( 2 .ne. iarg4()) print *,'ng2'
  if ( 3.ne. iarg5()) print *,'ng3'
  if ( 4 .ne. iarg6()) print *,'ng4'
end subroutine

subroutine iproc01() bind(C)
  print *,'proc01'
  return 
  entry iproc01_2() bind(C)
  print *,'proc01_2'
end subroutine
function iproc02() result(ret) bind(C)
  integer :: ret
  ret = 1
  return
  entry iproc02_2() result(ret) bind(C)
  ret = 2
end function
integer function iproc03() bind(C)
  iproc03 = 3
  return
  entry iproc03_2() bind(C)
  iproc03_2 = 4
end function

use mod01
call mmm()
print *,'ok'
end
