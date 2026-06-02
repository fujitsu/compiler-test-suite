module test
 implicit none
  procedure():: p
integer::x=1
end
module m1
use test
end
subroutine sub
use m1
implicit none
call p
end
use test
call sub
if (x/=2) print *,301
print *,'pass'
end
subroutine p
use test
x=2
end
