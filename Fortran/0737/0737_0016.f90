module m1
type x
  integer::x1=1
end type
contains
subroutine s1(a01)
entry      s2(a01)
entry      s3(a01)
type(x),intent(out),optional::a01
if (present(a01))then
   if (a01%x1/=1)write(6,*) "NG"
endif
end subroutine
end
use m1
type(x)::a01
a01%x1=100
call s1(a01)
call s2(a01)
call s3(a01)
print *,'pass'
end
