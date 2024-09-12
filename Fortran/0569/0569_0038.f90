integer :: arr(3)=[1,2,3]
call sub(arr,4)        
if(any((arr) .ne. [4,5,6])) print*,101
print*,"PASS"
        contains
        impure subroutine sub(x,n)
        integer,intent(in) :: n
        integer ,intent(out) :: x(3)
        x = [4,5,6]
        if(n /= 4)print*,103
        end subroutine
        end
