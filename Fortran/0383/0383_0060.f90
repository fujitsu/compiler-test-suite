module mod
  contains
  subroutine msub(arg1)
    integer :: arg1
    entry ment(arg1)
  end subroutine
  function xfunc01(arg1) result(ret)
    integer :: arg1
    integer :: ret
    entry ment01(arg1) result(ret)
    ret = 1
  end function
  integer function xfunc02(arg1)
    integer :: arg1
    xfunc02 = 2
    entry ment02(arg1)
    ment02 = 22
  end function
end module

module mod01
  use mod
  procedure(msub) :: iproc01
  procedure(ment) :: iproc01_2
  procedure(xfunc01) :: iproc02
  procedure(ment01) :: iproc02_2
  procedure(xfunc02) :: iproc03
  procedure(ment02) :: iproc03_2
  interface
    subroutine exsub(iarg1,iarg2,iarg3,iarg4,iarg5,iarg6)
      import
      procedure(msub) :: iarg1
      procedure(ment) :: iarg2
      procedure(xfunc01) :: iarg3
      procedure(ment01) :: iarg4
      procedure(xfunc02) :: iarg5
      procedure(ment02) :: iarg6
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
  procedure(ment) :: iarg2
  procedure(xfunc01) :: iarg3
  procedure(ment01) :: iarg4
  procedure(xfunc02) :: iarg5
  procedure(ment02) :: iarg6
  call iarg1(1)
  call iarg2(2)
  if ( 3.ne. iarg3(3)) print *,'ng3'
  if ( 4 .ne. iarg4(4)) print *,'ng4'
  if ( 5.ne. iarg5(5)) print *,'ng5'
  if ( 6 .ne. iarg6(6)) print *,'ng6'
end subroutine

subroutine iproc01(arg1)
  integer :: arg1
  if ( 1 .ne. arg1) print *,'ng1'
  return 
  entry iproc01_2(arg1)
  if ( 2 .ne. arg1) print *,'ng2'
end subroutine
function iproc02(arg1) result(ret)
  integer :: arg1
  integer :: ret
  ret = arg1
  return
  entry iproc02_2(arg1) result(ret)
  ret = arg1
end function
integer function iproc03(arg1)
  integer :: arg1
  iproc03 = arg1
  return
  entry iproc03_2(arg1)
  iproc03_2 = arg1
end function

use mod01
call mmm()
print *,'ok'
end
