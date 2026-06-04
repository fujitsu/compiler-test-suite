module mm
  interface
    integer module function   fun(k,m1,m2,m3)
    implicit none
    interface
      integer function m1(n)
      end
      integer function m2(n)
      end
      integer function m3(n)
      end
      integer function k(n)
      end
    end interface
    end
  end interface
end

submodule(mm)smod
contains
  module procedure fun
    fun=k(2)
   if ( fun/=3) print *,202
if(m1(1)/=2) print *,9001
if(m2(1)/=2) print *,9001
if(m3(1)/=2) print *,9001
  end procedure
end

use mm
   common /cmn/ i
interface
      integer function m1(n) result(k)
      end
      integer function m2(n) result(k)
      end
      integer function m3(n) result(k)
      end
      integer function k(n)
      end
end interface
if(fun(k,m1,m2,m3)/=3) print *,301
print *,'sngg555o : pass'
end
   integer function m1(n) result(k)
   k=n+1
  end
   integer function m2(n) result(k)
   k=n+1
  end
   integer function m3(n) result(k)
   k=n+1
  end
   integer function k(n)
   k=n+1
  end
