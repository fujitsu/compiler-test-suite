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
subroutine chk02(pa)
  character(:),pointer::pa(:,:)
if (len(pa)/=1)print *,'error-11'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12c'
if (.not.associated(pa))print *,'error-13c'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14c'
if (any(shape(pa)/=(/3,2/)))print *,'error-15d'
end subroutine
subroutine chk03(p)
  character(:),pointer::p
if (len(p)/=1)print *,'error-1d'
if (p/='3')print *,'error-2d'
if (.not.associated(p))print *,'error-3d'
end subroutine
subroutine chk04(pa)
  character(:),pointer::pa(:,:)
if (len(pa)/=2)print *,'error-11e'
if (any(pa/=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))))print *,'error-12e'
if (.not.associated(pa))print *,'error-13e'
if (any(ubound(pa)/=(/2,3/)))print *,'error-14e'
if (any(shape(pa)/=(/2,3/)))print *,'error-15e'
end subroutine
subroutine ss1(p,pa)
  character(:),pointer::p
  character(:),pointer::pa(:,:)
p=>f(2)
if (len(p)/=2)print *,'error-1'
if (p/='12')print *,'error-2'
if (.not.associated(p))print *,'error-3'
call chk01(p)
pa=>fa(1)
if (len(pa)/=1)print *,'error-11'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'
if (.not.associated(pa))print *,'error-13'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14'
if (any(shape(pa)/=(/3,2/)))print *,'error-15'
call chk02(pa)

p=>f(1)
if (len(p)/=1)print *,'error-1a'
if (p/='3')print *,'error-2a'
if (.not.associated(p))print *,'error-3a'
call chk03(p)
pa=>fa(2)
if (len(pa)/=2)print *,'error-11a'
if (any(pa/=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))))print *,'error-12a'
if (.not.associated(pa))print *,'error-13a'
if (any(ubound(pa)/=(/2,3/)))print *,'error-14a'
if (any(shape(pa)/=(/2,3/)))print *,'error-15a'
call chk04(pa)
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