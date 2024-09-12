module m1
  character(2),target::ta2(2,3)=reshape((/'a2','b2','c2','d2','e2','f2'/),(/2,3/))
  character(2),target::tb2(2,3)=reshape((/'a2','b2','c2','d2','e2','f2'/),(/2,3/))
  character(2),target::tbc(2,3)=reshape((/'a2','b2','c2','d2','e2','f2'/),(/2,3/))
  character(:),pointer::p
  type v
    character(2),pointer::ta(:,:)
    character(:),pointer::tp(:,:)
  end type
contains
subroutine s1(ta,tp,a)
  character(:),pointer::pp
  character(*),target::ta(:,:)
  character(:),pointer::tp(:,:)
  type(v),target::a
if (len(tp)/=2)print *,'error-521',len(tp)
p=>tp(2,3)
if (len(p)/=2)print *,'error-421'
if (p/='f2')print *,'error-422'
call       ss1(p,ta)
contains
subroutine ss1(p,ta)
  character(:),pointer::p
  character(*),target::ta(:,:)
if (len(p)/=2)print *,'error-501',len(p)
if (p/='f2')print *,'error-502'
p=>ta(2,3)(:)
end subroutine
end subroutine
end
use m1
  character(:),pointer::tp(:,:)
  type(v),target::a
tp=>tb2
allocate(a%ta(2,3))
a%ta=tbc
a%tp=>tbc
if (len(tp)/=2)print *,'error-601',len(tp)
call s1(ta2,tp,a)
print *,'pass'
end

