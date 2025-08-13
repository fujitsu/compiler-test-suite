module m1
  type ty
    integer :: i=4
  end type
end
module m333
  interface
    module subroutine sub(a)
use m1
  type(ty) :: a
    end subroutine
  end interface
end

submodule (m333) smod
contains
module procedure sub
use m1
write(2,*)a
if (a%i/=4) print *,101
write(2,*)ty(5)
end
end
use m1
use m333
  type(ty) :: a
call sub(a)
rewind 2
read(2,*) n
if (n/=4) print *,202
read(2,*) n
if (n/=5) print *,203
print *,'pass'
end
