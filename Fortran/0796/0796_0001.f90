module m1
  implicit none
       procedure(),pointer        :: p08
       procedure()                :: sub
end
use m1

p08=> sub
 call p08(1) 

print *,'pass'
 end
subroutine sub(k)
if (k/=1) print *,201
end
