module mdef
type x
 integer scalar
 integer array(5)
end type
end module

use mdef
 type (x)::ta(10)

 integer::i
i=10

 call sub(i,ta)

 if (ta(i)%array(1) == 10 ) then
 print *,'pass'
 else
 print *,'ng'
 print *,ta(i)%array(1)
 endif

end

subroutine sub(i,ta)
use mdef
 integer::i
 type (x)::ta(i)
 ta(i:5)%scalar   = i
 ta(i::i)%scalar    = 1
 ta(i::i)%scalar    = 1
 ta(:5:i)%scalar    = 1
 ta(::i)%scalar     = i

 ta(i)%array(i:5:i) = i
 ta(i)%array(i::i)  = i
 ta(i)%array(:5:i)  = i
 ta(i)%array(::1)   = i
 ta(i)%array   = i

end subroutine
