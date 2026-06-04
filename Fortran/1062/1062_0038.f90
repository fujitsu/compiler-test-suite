module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    pointer:: k
    intent(in):: k
    procedure()::k
    end
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   call k
  end procedure
end

use m3
   common /cmn/ i
interface
      subroutine k()
      end
end interface
call sub(k)
if (i/=1) print *,201
print *,'sngg143h : pass'
end
   subroutine k()
   common /cmn/ i
   i=1
  end
