module m3
  implicit none
  interface
    module subroutine sub(k,s)
    implicit none
    interface
      subroutine s()
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
   call k
if (i/=1)print *,901
   call s
if (i/=2)print *,902
  end procedure
end

use m3
   common /cmn/ i
interface
      subroutine k()
      end
      subroutine s()
      end
end interface
call sub(k,s)
if (i/=2) print *,201
print *,'sngg137h : pass'
end
   subroutine k()
   common /cmn/ i
   i=1
  end
   subroutine s()
   common /cmn/ i
   i=2
  end
