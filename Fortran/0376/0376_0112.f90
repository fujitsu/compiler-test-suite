module m1
  character(2),target::ta2(2,3)=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))
  character(:),pointer::p
end
subroutine s1
use m1
  character(:),pointer::pp
p=>ta2(2,3)
if (len(p)/=2)print *,'error-401'
if (p/='ff')print *,'error-402'
call       ss1(p)
pp=>ta2(2,1)
if (len(pp)/=2)print *,'error-701'
if (pp/='bb')print *,'error-702'
contains
subroutine ss1(p)
  character(:),pointer::p
if (len(p)/=2)print *,'error-501'
if (p/='ff')print *,'error-502'
p=>ta2(2,2)
if (len(p)/=2)print *,'error-601'
if (p/='dd')print *,'error-602'
end subroutine
end
call s1
print *,'pass'
end

