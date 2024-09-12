call sub01()
call sub02()
call sub03()
call sub04()
print *,'pass'
end

module mod01
contains
        FUNCTION poly_ddv01(x)
        REAL, DIMENSION(10),intent(in) :: x
        poly_ddv01=poly_dd01(x(1))
        END FUNCTION 
        FUNCTION poly_dd01(xxx)
        REAL, INTENT(IN) :: xxx
        poly_dd01=1
        j=xxx
        END FUNCTION 
end
subroutine sub01()
use mod01
i=poly_ddv01((/(i+0.0,i=1,10)/))
end

module mod02
end
subroutine sub02()
use mod02
i=poly_ddv02((/(i+0.0,i=1,10)/))
contains
        FUNCTION poly_ddv02(x)
        REAL, DIMENSION(10),intent(in) :: x
        poly_ddv02=poly_dd02(x(1))
        END FUNCTION
        FUNCTION poly_dd02(xxx)
        REAL, INTENT(IN) :: xxx
        poly_dd02=1
        j=xxx
        END FUNCTION 
end

module mod03
contains
        FUNCTION poly_ddv03(x)
        REAL, DIMENSION(10),intent(in) :: x
        poly_ddv03=poly_dd03(x(1))
        END FUNCTION
end
        FUNCTION poly_dd03(xxx)
        REAL, INTENT(IN) :: xxx
        poly_dd03=1
        j=xxx
        END FUNCTION 
subroutine sub03()
use mod03
i=poly_ddv03((/(i+0.0,i=1,10)/))
end

module mod04
contains
        FUNCTION poly_ddv04(x)
        REAL, DIMENSION(10),intent(in) :: x
        poly_ddv04=poly_dd04(x(1))
        END FUNCTION 
end
        FUNCTION poly_dd04(xxx)
        REAL, INTENT(IN) :: xxx
        poly_dd04=1
        j=xxx
        END FUNCTION 
subroutine sub04()
use mod04
i=poly_ddv04((/(i+0.0,i=1,10)/))
end
