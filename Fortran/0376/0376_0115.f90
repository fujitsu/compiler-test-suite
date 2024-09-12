module m1
  character(2),target::ta2(2,3)=reshape((/'a2','b2','c2','d2','e2','f2'/),(/2,3/))
  character(2),target::tb2(2,3)=reshape((/'a2','b2','c2','d2','e2','f2'/),(/2,3/))
  character(2),target::tbc(2,3)=reshape((/'a2','b2','c2','d2','e2','f2'/),(/2,3/))
  type v
    character(2),pointer::ta(:,:)
    character(:),pointer::tp(:,:)
  end type
contains
subroutine s1(a)
  type(v),target::a
call       ss1(a%tp)
contains
subroutine ss1(ta)
  character(:),pointer::p
  character(*),target::ta(:,:)
p=>ta(2,2)
if (len(p)/=2)print *,'error-601'
if (p/='d2')print *,'error-602'
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
call s1(a)
print *,'pass'
end

