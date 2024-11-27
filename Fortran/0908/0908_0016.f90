integer :: aa
call sub(aa)
contains
    subroutine sub(xx)
        type(*) :: xx
        integer :: bb(5)
        type ty
        integer :: yy(5)
        integer :: zz
        end type
        type(ty) :: obj
        integer::c(5)
        integer :: d(5,5)
        obj = ty(xx,4)
    end subroutine
end program
