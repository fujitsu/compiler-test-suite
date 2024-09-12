module m1
type t
 integer::x
end type
end
module d
contains
subroutine s(v)
   use m1
   type(t)::v
end
end

subroutine sub1(k1)
use d
end
subroutine sub2(k2)
use d
use m1
end
subroutine sub3(k3)
use m1
use d
end
print *,'pass'
end
