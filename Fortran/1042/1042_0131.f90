module mdef
type x
 integer scalar
 integer array(5)
end type
end module

use mdef
 type (x)::ta(5)

 integer::i
i=1

 call sub(i,ta)

 if (ta(i)%array(1) == 1 ) then
 print *,'pass'
 else
 print *,ta(1)
 print *,ta(2)
 endif

end

subroutine sub(i,ta)
use mdef
 type (x)::ta(5)
 integer::i
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
