module m
  interface
    elemental module function msub1(n)
    intent(in)::n
    end 
    module elemental function msub2(n)
    intent(in)::n
    end 
  end interface
  integer::k(2)=[1,2]
end

submodule(m)smod
contains 
    elemental module function msub1(n)
    intent(in)::n
    msub1=n+1
  end
end

submodule(m)ssmod
contains
    module elemental function msub2(n)
    intent(in)::n
    msub2=n+2
  end 
end

use m
if (any(msub1(k)/=[2,3])) print *,101
if (any(msub2(k)/=[3,4])) print *,102
if (any(k/=[1,2])) print *,10001
print *,'pass'
end
