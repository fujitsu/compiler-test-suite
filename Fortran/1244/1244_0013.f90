module m
  interface aaa
     module function sub(i) result(j)
     end function
  end interface
end module m
submodule(m)smod2
contains
  module function sub(i) result(j)
    j=i-1 
  end function
end
use m
integer::i=0
interface aaa
   procedure bbb
end interface
if(aaa(i)/=-1) print *,'err'
print *,'sngtin16:pass'
contains
  function bbb() 
  end function bbb
end
