module test
 implicit none
  procedure(),pointer:: p
end
module m1
use test
end
subroutine sub
use m1
implicit none
p=>null()
if (associated( p ) )print *,201
end
call sub
print *,'pass'
end
