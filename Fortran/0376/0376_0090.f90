module m1
  character(2),target::t='12'
  character(:),pointer::p
end
subroutine s1
use m1
interface
    function f() result(r)
      character(:),pointer::r
    end function 
end interface
p=>f()
if (len(p)/=2)print *,'error-1'
if (p/='12')print *,'error-2'
if (.not.associated(p))print *,'error-3'
end
call s1
print *,'pass'
end
    function f() result(r)
      use m1
      character(:),pointer::r
      r=>t
    end function 
