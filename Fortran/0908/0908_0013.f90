integer :: aa
call sub(aa)
contains
    subroutine sub(xx)
        type(*) :: xx
        namelist /name/ xx
    end subroutine
end program        
