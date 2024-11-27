module m1
protected ::a1
integer:: a1(2)=(/1,2/)
contains
subroutine s1
a1(2)=a1(2)+1
end subroutine
end
use m1
call s1
if (a1(1)/=1)write(6,*) "NG"
if (a1(2)/=3)write(6,*) "NG"
print *,'pass'
end
