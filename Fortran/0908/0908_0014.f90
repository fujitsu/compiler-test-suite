use m
integer :: aa
call sub(aa)
end program

module m
contains
    subroutine sub(xx)
        type(*) :: xx
        namelist /name/xx
    end subroutine
end module        
