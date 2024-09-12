module m
  type ty
  contains
    procedure,nopass :: p=>ss
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
call s
end
