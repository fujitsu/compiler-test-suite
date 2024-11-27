  implicit none
       procedure(),pointer        :: p08
       procedure()                :: sub

p08=> sub
 call p08(1) 

print *,'pass'
 end
subroutine sub(k)
if (k/=1) print *,201
end
