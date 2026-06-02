module mod01
 type ty01
  sequence
  procedure(type(ty01)),nopass,pointer :: i01
  procedure(integer(kind=1)),nopass,pointer :: i02
  procedure(),nopass,pointer :: i03
  integer(kind=1),pointer :: i04
 end type
end module
use mod01, ty0A => ty01
 type ty01
  sequence
  procedure(type(ty01)),nopass,pointer :: i01
  procedure(integer(kind=1)),nopass,pointer :: i02
  procedure(),nopass,pointer :: i03
  integer(kind=1),pointer :: i04
 end type
type(ty01),pointer :: t
type(ty0A),pointer :: a
allocate(a)
t => a
if ( .not. associated(t)) print *,'fail'
print *,'pass'
end
