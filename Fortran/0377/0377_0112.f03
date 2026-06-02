module mod
contains
 elemental function ifun(i,j)
  intent(in) :: i,j
  ifun=i+j
 end function ifun
 elemental function jfun(i,j)
  intent(in) :: i,j
  real :: i,j
  jfun=i-j
 end function jfun
end
use mod
 interface operator(.eor.)
  module procedure ifun,jfun
 end interface

logical :: ll,ll2(1)

ll2 = ((/.true./).xor.(/.true./))
if (ll2(1).neqv..false.) print *,'fail'
ll = .false..xor..false.
if (ll.neqv..false.) print *,'fail'

print *,'pass'

end
