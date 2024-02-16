module mmm
contains
elemental subroutine s(xxx,yyy)
  complex(16),intent(in)::xxx
  complex(16),intent(out)::yyy
  yyy=xxx
end subroutine s
end module mmm
use mmm
complex(16)::aaa(2),bbb(2)
bbb=2
call s(bbb+bbb,aaa)
if(any(aaa/=(4.0_16,0.0_16))) print *,'err'
print *,'pass'
end
