module mod
contains
        FUNCTION poly_ddv(x)
        REAL, DIMENSION(10),intent(in) :: x
        poly_ddv=poly_dd(x(1))
        END FUNCTION poly_ddv
        FUNCTION poly_dd(xxx)
        REAL, INTENT(IN) :: xxx
        poly_dd=1
        j=xxx
        END FUNCTION 
       end

use mod 
i=poly_ddv((/(i+0.0,i=1,10)/))
print *,'pass'
end
