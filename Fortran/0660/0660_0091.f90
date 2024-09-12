call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod01
contains
        FUNCTION poly_ddv01(xx)
        type ty1
        SEQUENCE
        REAL, DIMENSION(10) :: x
        end type 
        type (ty1),INTENT(IN) :: xx
        poly_ddv01=poly_dd01(xx%x(1))
        END FUNCTION 
        FUNCTION poly_dd01(xxx)
        REAL, INTENT(IN) :: xxx
        poly_dd01=1
        j=xxx
        END FUNCTION 
end

subroutine sub01()
use mod01
        type ty1
        SEQUENCE
        REAL, DIMENSION(10) :: x
        end type 
        type (ty1) :: xx
xx%x=(/(i+0.0,i=1,10)/)
i=poly_ddv01(xx)
end

module mod02
contains
        FUNCTION poly_ddv02(xx)
        type ty1
        SEQUENCE
        REAL, DIMENSION(10) :: x
        end type 
        type (ty1),INTENT(IN) :: xx
        poly_ddv02=poly_dd02(xx%x(1))
        END FUNCTION 
        FUNCTION poly_dd02(xxx)
        REAL :: xxx
        poly_dd02=1
        j=xxx
        END FUNCTION 
end

subroutine sub02()
use mod02
        type ty1
        SEQUENCE
        REAL, DIMENSION(10) :: x
        end type 
        type (ty1) :: xx
xx%x=(/(i+0.0,i=1,10)/)
i=poly_ddv02(xx)
end

module mod03
contains
        FUNCTION poly_ddv03(xx)
        type ty1
        SEQUENCE
        REAL, DIMENSION(10) :: x
        end type 
        type (ty1) :: xx
        poly_ddv03=poly_dd03(xx%x(1))
        END FUNCTION 
        FUNCTION poly_dd03(xxx)
        REAL,intent(in) :: xxx
        poly_dd03=1
        j=xxx
        END FUNCTION 
end

subroutine sub03()
use mod03
        type ty1
        SEQUENCE
        REAL, DIMENSION(10) :: x
        end type 
        type (ty1) :: xx
xx%x=(/(i+0.0,i=1,10)/)
i=poly_ddv03(xx)
end
