module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    external k
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   call k
  end procedure
end

use m3
integer::b(8)
external::s
call sub(s )
rewind 1
read(1,*) k
if (k/=101) print *,301
print *,'sngg204f : pass'
end
subroutine s
write(1,*) 101
end
