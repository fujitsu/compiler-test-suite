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
p=>ta(2,3)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
call       ss1(p,ta)
pp=>ta(2,1)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'
p=>ta(2,3)(:)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
call       ss1(p,ta)
pp=>ta(2,1)(:)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'
p=>tp(2,3)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
call       ss1(p,ta)
pp=>tp(2,1)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'
p=>tp(2,3)(:)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
call       ss1(p,ta)
call       ss1(p,a%ta)
call       ss1(p,a%tp)
pp=>tp(2,1)(:)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'

p=>a%ta(2,3)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
call       ss1(p,ta)
pp=>a%ta(2,1)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'
p=>a%ta(2,3)(:)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
call       ss1(p,ta)
pp=>a%ta(2,1)(:)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'
p=>a%tp(2,3)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'
pp=>a%tp(2,1)
if (len(pp)/=2)print *,'error-701'
if (pp/='b2')print *,'error-702'
p=>a%tp(2,3)(:)
if (len(p)/=2)print *,'error-401'
if (p/='f2')print *,'error-402'

i2=2
p=>ta(2,3)(i2:2)
if (len(p)/=1)print *,'error-401'
if (p/='2')print *,'error-402'
call       ss2(p,ta)
pp=>ta(2,1)(i2:i2)
if (len(pp)/=1)print *,'error-701'
if (pp/='2')print *,'error-702'
p=>tp(2,3)(i2:2)
if (len(p)/=1)print *,'error-401'
if (p/='2')print *,'error-402'
pp=>tp(2,1)(i2:)
if (len(pp)/=1)print *,'error-701'
if (pp/='2')print *,'error-702'

p=>a%ta(2,3)(i2:)
if (len(p)/=1)print *,'error-401'
if (p/='2')print *,'error-402'
pp=>a%ta(2,1)(2:)
if (len(pp)/=1)print *,'error-701'
if (pp/='2')print *,'error-702'
p=>a%tp(2,3)(i2:2)
if (len(p)/=1)print *,'error-401'
if (p/='2')print *,'error-402'
contains
subroutine ss1(p,ta)
  character(:),pointer::p
  character(*),target::ta(:,:)
if (len(p)/=2)print *,'error-501'
if (p/='f2')print *,'error-502'
p=>ta(2,2)
if (len(p)/=2)print *,'error-601'
if (p/='d2')print *,'error-602'
p=>ta(1,2)(:)
if (len(p)/=2)print *,'error-601'
if (p/='c2')print *,'error-602'
p=>ta(2,3)
end subroutine
subroutine ss2(p,ta)
  character(:),pointer::p
  character(*),target::ta(:,:)
if (len(p)/=1)print *,'error-501'
if (p/='2')print *,'error-502'
p=>ta(2,2)
if (len(p)/=2)print *,'error-601'
if (p/='d2')print *,'error-602'
p=>ta(1,2)(:)
if (len(p)/=2)print *,'error-601'
if (p/='c2')print *,'error-602'
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
call s1(ta2,tp,a)
print *,'pass'
end

