module mod
  type str
    sequence
    integer :: iii
  end type
  interface
  subroutine msub(arg1)
    import
    type(str) :: arg1
  end subroutine
  function xfunc01(arg1) result(ret)
    import
    type(str) :: arg1
    type(str) :: ret
  end function
  function xfunc02(arg1)
    import
    type(str) :: xfunc02,arg1
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
  type(str) :: sss
  call iarg1(str(1))
  call iarg2(str(2))
  sss = iarg3(str(3))
  if ( 3 .ne. sss%iii ) print *,'ng3'
  sss = iarg4(str(4))
  if ( 4 .ne. sss%iii ) print *,'ng4'
  sss = iarg5(str(5))
  if ( 5 .ne. sss%iii ) print *,'ng5'
  sss = iarg6(str(6))
  if ( 6 .ne. sss%iii ) print *,'ng6'
end subroutine

subroutine iproc01(arg1)
  type str
    sequence
    integer :: iii
  end type
  type(str) :: arg1
  print *,arg1
  return 
  entry iproc01_2(arg1)
  print *,arg1
end subroutine
function iproc02(arg1) result(ret)
  type str
    sequence
    integer :: iii
  end type
  type(str) :: arg1
  type(str) :: ret
  ret = arg1
  return
  entry iproc02_2(arg1) result(ret)
  ret = arg1
end function
function iproc03(arg1)
  type str
    sequence
    integer :: iii
  end type
  type(str) :: arg1,iproc03_2,iproc03
  iproc03 = arg1
  return
  entry iproc03_2(arg1)
  iproc03_2 = arg1
end function

use mod01
call mmm()
print *,'ok'
end
