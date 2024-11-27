module test
 implicit none
  procedure():: p
  pointer:: p
  pointer:: p1
  procedure():: p1
end
module m1
use test
end
subroutine sub
use m1
implicit none
p=>null()
if (associated( p ) )print *,201
p1=>null()
if (associated( p1 ) )print *,202
end
call sub
print *,'pass'
end
