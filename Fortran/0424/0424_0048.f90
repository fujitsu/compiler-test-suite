module m
  external :: ext
  type ty
    integer :: i=0
    procedure(),pointer,nopass ::p
  contains
    procedure :: tbp
  end type
  type(ty) :: t
contains
  subroutine tbp(this)
    class(ty) :: this
    this%i = this%i + 1
  end subroutine
end

use m
t%p=>ext
call t%tbp
call t%p(t)
if (t%i /= 3) print *,t%i
print *,'pass'
end 

subroutine ext(arg)
  use m
  type(ty) :: arg
  arg%i = arg%i + 2
end
