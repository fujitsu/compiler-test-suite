MODULE M
interface
subroutine sub(IARG)
end subroutine
end interface
end module

use M
procedure(sub),pointer::ptr
interface gnr
  function s1(d1,d2)
  integer :: d1,d2,s1
  end function
  procedure ptr
  subroutine sub1()
  end subroutine
end interface
ptr=>sub
end

function s1(d1,d2)
  integer :: d1,d2,s1
  d1 = 2
  d2 = 2
  s1 = d1
end function
subroutine sub(IARG)
  integer :: IARG
  IARG = 2
end subroutine
subroutine sub1()
print*,"in Sub"
end subroutine
