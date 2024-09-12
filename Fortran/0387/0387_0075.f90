module mod01
 contains
  subroutine msub01(i) bind(c, name = 'ms01')
   integer :: i
  end subroutine
end module

use mod01

interface
 subroutine osub01(i) bind(c, name = 'os01')
  integer :: i
 end subroutine
end interface

procedure(msub01), pointer :: ofunc01
procedure(osub01), pointer :: ofunc02

ofunc01 => msub01
ofunc02 => osub01
print *,'pass'
end

subroutine osub01(i) bind(c, name = 'os01')
 integer :: i
end subroutine
