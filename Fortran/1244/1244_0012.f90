module m
  interface aaa
     module subroutine sub(i)
     end subroutine
  end interface
end module m
submodule(m)smod2
contains
  module subroutine sub(i)
    interface  sub
       module procedure sub
    end interface
    i=-1 
  end subroutine
end
use m
interface aaa
   procedure bbb
end interface
call aaa(i)
if(i/=-1) print *,'err'
print *,'sngtin15:pass'
contains
  subroutine bbb
  end subroutine bbb
end
