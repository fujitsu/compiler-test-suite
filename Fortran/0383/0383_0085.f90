function iproc01()
  iproc01 = 100
end function
function iproc02()
  iproc02 = 200
end function
module mod01
  interface
    function ifunc()
    end function
  end interface
  procedure(ifunc),pointer :: ppp
  procedure(ifunc),pointer :: qqq
end module
module mod02
  use mod01,aaa=>ppp,bbb=>qqq
  procedure(ifunc),pointer :: ppp
  protected :: ppp
  protected :: qqq
  procedure(ifunc),pointer :: qqq
end module
use mod02
interface
  function iproc01()
  end function
  function iproc02()
  end function
end interface
aaa=>iproc01
bbb=>iproc02
if ( 100 .ne. aaa()) print *,'fail'
if ( 200 .ne. bbb()) print *,'fail'
print *,'ok'
end
