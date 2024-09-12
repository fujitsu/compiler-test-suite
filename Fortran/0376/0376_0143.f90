module m1
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::pa(:,:)
contains
subroutine chk02x(pa)
  character(*)::pa(:,:)
if (len(pa)/=1)print *,'error-11g'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12g'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14g'
if (any(shape(pa)/=(/3,2/)))print *,'error-15g'
end subroutine
end
subroutine s1
use m1
pa=>ta
call chk02x(pa)
end
call s1
print *,'pass'
end
