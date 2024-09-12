integer :: arr(5)=[1,2,3,4,5]
call sub(arr(1:5:2),4)        
        print*, "PASS"
        contains
        impure elemental subroutine sub(x,n)
        integer,intent(in) :: n
        integer ,intent(in) :: x
        if(n .ne. 4) print*,101
        if(.not.(x /= 1 .or. x /= 3 .or. x /= 5)) print*,102
        end subroutine
        end
