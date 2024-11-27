MODULE M
interface
 function aa(ad1)
  integer :: ad1,aa
 end function

 subroutine s1(d1,d2)
  integer :: d1,d2
 end subroutine
end interface
end module

use M
interface gnr
  procedure aa,s1
end interface
end

function aa(ad1)
  integer :: ad1,aa
  ad1 = 2
  aa = 2
  print*,"calling aa "
end function

subroutine s1(d1,d2)
  integer :: d1,d2
  d1 = 2
  d2 = 2
  print*,"calling S1 "
end subroutine
