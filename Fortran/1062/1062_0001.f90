module m3
  implicit none
  interface
    module integer function   fun(k)
  implicit none
    integer,external ::k
    end
  end interface
end

submodule(m3)smod
contains
  module procedure fun
   fun= k(2)
   if (fun/=3) print *,202
  end procedure
end

use m3
   common /cmn/ i
interface
      function   k(n)
      end
end interface
if (fun (k)/=3) print *,401
if (i/=1) print *,201
print *,'sngg134h : pass'
end
   function   k(n)
   common /cmn/ i
   i=1
   k=n+1
  end
