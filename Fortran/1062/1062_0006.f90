module m3
  implicit none
  interface
    module subroutine sub(k)
    implicit none
    procedure(integer),pointer,intent(in):: k
    end
  end interface
end

submodule(m3)smod
contains
  module procedure sub
   if ( k() /= 2) print *,303
  end procedure
end

use m3
   common /cmn/ i
interface
      function   k()
      end
end interface
call sub(k)
if (i/=1) print *,201
print *,'sngg145h : pass'
end
   function   k()
   common /cmn/ i
   i=1
   k=2
  end
