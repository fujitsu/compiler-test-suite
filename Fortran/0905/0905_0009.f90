use, intrinsic :: ISO_C_BINDING
integer :: a
print*, "PASS"
call sub(a)
        contains
        pure subroutine sub(x)
        integer,intent(in),target :: x
        type(c_ptr) :: y
        y = c_loc(x)
        end subroutine
end         


