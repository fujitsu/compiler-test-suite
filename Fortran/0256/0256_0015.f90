integer :: a(5)
call sub(a(1:5:2))
        contains
        subroutine sub(xx)

        integer,contiguous :: xx(:)
        if(is_contiguous(xx).NEQV..TRUE.)print*,101
        print*,'PASS'
        end subroutine
end
