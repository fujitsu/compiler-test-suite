MODULE M
interface
subroutine sub(IARG)
end subroutine
end interface
end module

use M
interface gnr
  function s1(d1,d2)
  integer :: d1,d2,s1
  end function
  procedure sub 
end interface
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
