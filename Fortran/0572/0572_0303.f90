type ty
  integer:: a
    end type
type(ty)::obj(4,4)
call sub(obj)
contains
       subroutine sub(xx)
           type(ty) :: xx(2,*)
           call sub2(xx)
       end subroutine sub
       subroutine sub2(c)
           type(ty), intent(out) :: c(..)
           print*,"PASS"
       end subroutine sub2

end

