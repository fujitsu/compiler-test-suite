module m1
  interface
    module recursive function s1(n) result(k)
    end
    module function s2()
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  s1
  n=n+1
  k=1
  if (n>5) return
  k   =s1(n)
 end
 module   procedure  s2
s2=1
 end
 end

use m1
n=0
if (s1(n)/=1) print *,1001

print *,'sngg569h : pass'
end

