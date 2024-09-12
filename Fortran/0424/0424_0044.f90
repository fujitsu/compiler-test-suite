module m
  type ty
    procedure(),pointer,nopass :: p
  end type
  type(ty) :: x(5)
contains
  subroutine s
    call x(1)%p()
  end subroutine
  subroutine ss
    print *,'pass'
  end subroutine
end

use m
x(1)%p => ss
call s
end
