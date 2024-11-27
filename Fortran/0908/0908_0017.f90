use m
integer :: aa
call sub(aa)
end program

module m
contains
    subroutine sub(xx)
        type(*) :: xx
        type ty
        integer :: yy(3)
        end type
        type(ty) :: obj
        obj = ty(xx)
    end subroutine
end module
