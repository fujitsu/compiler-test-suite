module mod
  interface
  subroutine msub(arg1)
    character :: arg1
  end subroutine
  function xfunc01(arg1) result(ret)
    character :: arg1
    character :: ret
  end function
  character function xfunc02(arg1)
    character :: arg1,ment02
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
  call iarg1('1')
  call iarg2('2')
  if ( '3' .ne. iarg3('3')) print *,'ng3'
  if ( '4' .ne. iarg4('4')) print *,'ng4'
  if ( '5' .ne. iarg5('5')) print *,'ng5'
  if ( '6' .ne. iarg6('6')) print *,'ng6'
end subroutine

subroutine iproc01(arg1)
  character :: arg1
  if ( '1' .ne. arg1) print *,'ng1'
  return 
  entry iproc01_2(arg1)
  if ( '2' .ne. arg1) print *,'ng2'
end subroutine
function iproc02(arg1) result(ret)
  character :: arg1
  character :: ret
  ret = arg1
  return
  entry iproc02_2(arg1) result(ret)
  ret = arg1
end function
character function iproc03(arg1)
  character :: arg1,iproc03_2
  iproc03 = arg1
  return
  entry iproc03_2(arg1)
  iproc03_2 = arg1
end function

use mod01
call mmm()
print *,'ok'
end
