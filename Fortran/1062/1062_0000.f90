module m3
  interface
    integer module function   fun(k)
    implicit none
    interface
      integer function k(n)
      end
    end interface
    end
  end interface
end

submodule(m3)smod
contains
  module procedure fun
    fun=k(2)
   if ( fun/=3) print *,202
  end procedure
end

use m3
   common /cmn/ i
interface
      integer function k(n)
      end
end interface
if(fun(k)/=3) print *,301
if (i/=1) print *,201
print *,'sngg132h : pass'
end
   integer function k(n)
   common /cmn/ i
   i=1
   k=n+1
  end
