integer ::y(3)=(/(j,j=1,3)/)
k=1
call sub(y(3:1:-1),k)
print *,'pass'
contains
        subroutine sub(x,k)
        integer x(k:)
        if (x(2)/=2)write(6,*) "NG"
        end subroutine
        end
