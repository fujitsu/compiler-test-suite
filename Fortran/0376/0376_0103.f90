module m1
  character(2),target::t='12'
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::p
  character(:),pointer::pa(:,:)
  character(1),target::t1='3'
  character(2),target::ta2(2,3)=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))
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
call       ss1(p,pa)
contains
subroutine chk01(p)
  character(:),pointer::p
if (len(p)/=2)print *,'error-1b'
if (p/='12')print *,'error-2b'
if (.not.associated(p))print *,'error-3b'
end subroutine
subroutine chk01x(p,k)
  character(*)::p
if (len(p)/=2*k)print *,'error-1f'
if (p/=repeat('12',k))print *,'error-2f'
end subroutine
subroutine ss1(p,pa)
  character(:),pointer::p
  character(:),pointer::pa(:,:)
p=>f(2)
if (len(p)/=2)print *,'error-1'
if (p/='12')print *,'error-2'
if (.not.associated(p))print *,'error-3'
call chk01(p)
call chk01x(p,1)
call chk01x(p//'12',2)
call chk01x(p//p//p,3)
end subroutine
end
call s1
print *,'pass'
end
    function f(i) result(r)
      use m1
      character(i),pointer::r
      if (i==1) then
        r=>t1
      else
        r=>t
      endif
    end function 
    function fa(i) result(r)
      use m1
      character(i),pointer::r(:,:)
      if (i==1) then
        r=>ta
      else
        r=>ta2
      endif
    end function 
