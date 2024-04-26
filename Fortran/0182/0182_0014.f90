module m
  interface
    pure      module function msub1(n)
    value::n
    end 
    module pure      function msub2(n)
    value::n
    end 
  end interface
  integer::k=1
end

submodule(m)smod
contains 
              module procedure msub1
    msub1=n+1
  end
end

submodule(m)ssmod
contains
    module procedure  msub2
    msub2=n+2
  end 
end

use m
if (msub1(k)/=2) print *,101
if (msub2(k)/=3) print *,102
if (k/=1) print *,10001
print *,'pass'
end
