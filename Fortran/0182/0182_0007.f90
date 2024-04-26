module m
  interface
    pure function msub1(n)
    value::n
    end 
  end interface
  integer::k=1
end

    pure      function msub1(n)
    value::n
    msub1=n+1
  end

use m
if (msub1(k)/=2) print *,101
if (k/=1) print *,10001
print *,'pass'
end
