module m0
  interface 
     module recursive subroutine s1(k)
     end
     module recursive subroutine s2(k)
     end
  end  interface
end
submodule(m0) smod
contains
     module recursive subroutine s1(k)
     procedure(s1),pointer::p
     p=>s1
     if (k<2) then
       k=k+1
       call p(k)
     end if
     end
     module procedure  s2
     procedure(s2),pointer::p
     p=>s2
     if (k<2) then
       k=k+1
       call p(k)
     end if
     end
end

use m0
k=1
call s1(k)
if (k/=2) print *,6001
k=1
call s2(k)
if (k/=2) print *,6002
print *,'sngg078p : pass'
end

