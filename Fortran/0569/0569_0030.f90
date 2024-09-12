integer :: arr(3) = [1,2,3] 
call sub(arr,4)        
if(any((arr) .ne. [4,4,4])) print*,101
print*,"PASS"
        contains
        impure elemental subroutine sub(x,n)
        integer,intent(in) :: n
        integer,intent(inout) :: x
        x = n
        end subroutine
        end
