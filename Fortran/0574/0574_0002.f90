module mo
implicit none

interface Gen_Fun
 module procedure Gen_Fun_i
 module procedure Gen_Fun_r
end interface

contains
subroutine Gen_Fun_i(a)
implicit none
  real,intent(IN) ::a
  if(a /= 2.0)print*,101
end subroutine Gen_Fun_i

subroutine Gen_Fun_r(abc)
implicit none
  procedure(real*8) :: abc
  real*8 :: arg=1.1
  if(abc(arg) /= arg)print*,102
end subroutine

function abc(d1)
  real*8::d1,abc
  abc=d1
end function

end module mo

use mo
implicit none
call Gen_Fun(2.0)
call Gen_Fun(abc)
print *,"pass"
end
