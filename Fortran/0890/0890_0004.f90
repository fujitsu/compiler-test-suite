MODULE M
 interface
  function aa(ad1)
  Integer::ad1,aa
  end function
 end interface

contains
subroutine s1(d1,d2)
  integer :: d1,d2
  d1 = 2
  d2 = 2
  print*,"calling S1 "
end subroutine
end module

use M
procedure(s1),pointer::ptr
procedure(aa),pointer::ptr1
interface gnr
  procedure ptr,ptr1
end interface
ptr=>s1
ptr1=>aa
end

function aa(ad1)
  integer :: ad1,aa
  ad1 = 2
  aa = 2
  print*,"calling aa "
end function

