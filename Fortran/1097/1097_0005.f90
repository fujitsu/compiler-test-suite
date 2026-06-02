module m1
  interface
    module function   s2()
    end
  end interface
end

submodule (m1) smod
  !allocatable::s2
contains
 module  procedure   s2
   s2=1
 end
 end

use m1
If ( s2()/=1) print *,101
print *,'sngg567h : pass'
end


