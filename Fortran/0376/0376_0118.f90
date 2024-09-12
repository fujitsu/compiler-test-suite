module m1
  character(2),target::tb2(6)=(/'a2','b2','c2','d2','e2','f2'/)
contains

subroutine s1(tp)
  character(:),pointer::tp(:)
if (len(tp)/=2)print *,'error-521',len(tp)
end subroutine
end
use m1
  character(:),pointer::tp(:)
tp=>tb2
call s1(tp)
print *,'pass'
end

