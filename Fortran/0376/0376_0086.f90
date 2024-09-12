module m1
  character(2),target::t='12'
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::p
  character(:),pointer::pa(:,:)
  contains
    function f() result(r)
      character(2),pointer::r
      r=>t
    end function 
    function fa() result(r)
      character(1),pointer::r(:,:)
      r=>ta
    end function 
  end
use m1
p=>f()
if (len(p)/=2)print *,'error-1'
if (p/='12')print *,'error-2'
if (.not.associated(p))print *,'error-3'
pa=>fa()
if (len(pa)/=1)print *,'error-11'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'
if (.not.associated(pa))print *,'error-13'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14'
if (any(shape(pa)/=(/3,2/)))print *,'error-15'
print *,'pass'
end
