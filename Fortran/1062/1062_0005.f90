module m3
  implicit none
  interface
    module subroutine sub(k,s)
    implicit none
    interface
      integer function s()
      end
    end interface
    procedure(s)::k
    end
  end interface
end

submodule(m3)smod
   common /cmn/ i
contains
  module procedure sub
   if (k()/=101) print *,801
if (i/=1)print *,901
   if (s()/=201) print *,802
if (i/=2)print *,902
  end procedure
end

use m3
   common /cmn/ i
interface
      function   k()
      end
      integer function s()
      end
end interface
call sub(k,s)
if (i/=2) print *,201
print *,'sngg138h : pass'
end
   function k()
   common /cmn/ i
   i=1
   k=101
  end
   integer function s()
   common /cmn/ i
   i=2
   s=201
  end
