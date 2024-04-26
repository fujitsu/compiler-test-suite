module m
  interface
    recursive impure      module function msub1(n,nn) result(kk)
    intent(inout)::n,nn
    end 
    recursive module impure      function msub2(n,nn) result(kk)
    intent(inout)::n,nn
    end 
  end interface
end

submodule(m)smod
contains 
              module procedure msub1
    nn=nn+1
    kk   =n+1
    n= kk  
    if (nn < 2) then 
       if (msub1(n,nn)/=kk+1) print *,221
    endif
  end
end

submodule(m)ssmod
contains
    module procedure  msub2
    nn=nn+1
    kk   =n+2
    n=kk   
    if (nn < 2) then 
       if (msub2(n,nn)/=kk+2) print *,321
    endif
  end 
end

use m
k=1
nn=0
if (msub1(k,nn)/=2) print *,101
k=1
nn=0
if (msub2(k,nn)/=3) print *,102
if (k/=5) print *,10001
print *,'pass'
end
