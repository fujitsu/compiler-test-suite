module m1
  interface 
    module function   s1(d)
    end
  end interface
end

submodule (m1) smod
contains
    module procedure s1
implicit character(s,d)
if (d/=2) print *,201
s1=d
    end
end

use m1
d=2
if (s1(d)/=2) print *,801
print *,'sngg224h : pass'
end

