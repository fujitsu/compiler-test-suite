module m
  type ty
    integer::x
   contains
     final :: fin
  end type ty
contains
  subroutine fin(this)
    type(ty),intent(in) :: this
print *,'fin'
print *,'fail'
write(1,*) this%x
  end subroutine fin
end 

use m
data i/1/
call s( ty(i) )
    print *,'sngg194j : pass'
end

subroutine s( this)
use m
    type(ty),intent(in) :: this
write(2,*) this%x
end

