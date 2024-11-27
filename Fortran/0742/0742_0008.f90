integer ::y(3)=(/(j,j=1,3)/)
call sub(y(3:1:-1))
print *,'pass'
contains
        subroutine sub(x)
        integer x(:)
        if (x(2)/=2)write(6,*) "NG"
        end subroutine
        end
