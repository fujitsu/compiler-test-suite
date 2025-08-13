module m1
contains
subroutine s(a)
integer a(:)
write(56,*)a
end subroutine
end
use m1
integer a(5)
a(1:5:2)=1
call s(a(1:5:2))
print *,'pass'
end
