module m1
  character(2),target::t='12'
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
type x
  integer x1
  character(:),pointer::p
  character(:),pointer::pa(:,:)
end type
type(x)::v
end
subroutine s1
use m1
interface
    function f() result(r)
      character(:),pointer::r
    end function 
    function fa() result(r)
      character(:),pointer::r(:,:)
    end function 
end interface
v%p=>f()
if (len(v%p)/=2)print *,'error-1'
if (v%p/='12')print *,'error-2'
if (.not.associated(v%p))print *,'error-3'
v%pa=>fa()
if (len(v%pa)/=1)print *,'error-11'
if (any(v%pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'
if (.not.associated(v%pa))print *,'error-13'
if (any(ubound(v%pa)/=(/3,2/)))print *,'error-14'
if (any(shape(v%pa)/=(/3,2/)))print *,'error-15'
end
call s1
print *,'pass'
end
    function f() result(r)
      use m1
      character(:),pointer::r
      r=>t
    end function 
    function fa() result(r)
      use m1
      character(:),pointer::r(:,:)
      r=>ta
    end function 
