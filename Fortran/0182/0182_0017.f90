module m
  interface
    impure      module function msub1(n) result(kk)
    intent(inout)::n
    end 
    module impure      function msub2(n) result(kk)
    intent(inout)::n
    end 
  end interface
  integer::k=1
end

submodule(m)smod
contains 
              module procedure msub1
    kk   =n+1
    n= kk  
  end
end

submodule(m)ssmod
contains
    module procedure  msub2
    kk   =n+2
    n=kk   
  end 
end

use m
if (msub1(k)/=2) print *,101
if (msub2(k)/=4) print *,102
if (k/=4) print *,10001
print *,'pass'
end
