module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  subroutine fin(this)
    type(ty),intent(in) :: this
!print *,'fin'
write(7,*) this%x
  end subroutine fin
end

subroutine sub
use m
data i/1/
type(ty),save :: t
t%x=1
t=ty(i)
if (t%x /=1) print *,202
end
call sub
    print *,'sngg192j : pass'
end
