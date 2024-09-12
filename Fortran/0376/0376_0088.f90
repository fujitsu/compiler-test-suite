module m1
  character(2),target::t='12'
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::p
  character(:),pointer::pa(:,:)
end
subroutine s1
use m1
interface
    function f(i) result(r)
      character(i),pointer::r
    end function 
    function fa(i) result(r)
      character(i),pointer::r(:,:)
    end function 
end interface
p=>f(2)
if (len(p)/=2)print *,'error-1'
if (p/='12')print *,'error-2'
if (.not.associated(p))print *,'error-3'
pa=>fa(1)
if (len(pa)/=1)print *,'error-11'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'
if (.not.associated(pa))print *,'error-13'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14'
if (any(shape(pa)/=(/3,2/)))print *,'error-15'
end
call s1
print *,'pass'
end
    function f(i) result(r)
      use m1
      character(i),pointer::r
      r=>t
    end function 
    function fa(i) result(r)
      use m1
      character(i),pointer::r(:,:)
      r=>ta
    end function 
