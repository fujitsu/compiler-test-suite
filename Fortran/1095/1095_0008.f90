module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    procedure( ),pointer::k
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   call k()
  end procedure
end

use m3
external::s
procedure( ),pointer::k
k=>s
call sub(k )
rewind 2
read(2,*) kk
if (kk/=101) print *,301
print *,'sngg205f : pass'
end
subroutine s
write(2,*) 101
end
