module m1
  type v
    character(:),pointer::tp(:)
  end type
contains
subroutine s1
  type(v),target::a
  character(2),target::c(2)=(/'??','12'/)
a%tp=>c
call       ss1(a%tp)
contains
subroutine ss1(ta)
  character(:),pointer::p
  character(*),target::ta(:)
p=>ta(2)
if (len(p)/=2)print *,'error-601'
if (p/='12')print *,'error-602'
end subroutine
end subroutine
end
use m1
call s1
print *,'pass'
end

