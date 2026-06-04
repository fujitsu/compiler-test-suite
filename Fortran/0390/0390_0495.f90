module m1
contains
subroutine s1(a1)
integer,ASYNCHRONOUS::a1(:)
integer             ::a3(3)
open (58,ASYNCHRONOUS='yes')
write(58,fmt=*,ASYNCHRONOUS='yes') a1
wait(58)
rewind 58
read(58,*) a3
if (any(a3/= 3)) print *,101
end subroutine
subroutine s2(a2)
integer,VOLATILE    ::a2(:)
if (any(a2/= 3)) print *,102
end subroutine
subroutine s3(a3)
integer,VOLATILE,pointer ::a3(:)
if (any(a3/= 3)) print *,103
end subroutine

subroutine tt(x1)
integer::x1(:)
integer::x2(3)
integer,pointer::x3(:)
allocate (x3(3))
x1=3
x2=3
x3=3
call s1(x1)
call s1(x2)
call s1(x3)
call s2(x1)
call s2(x2)
call s2(x3)
call s3(x3)

call s1(x1(:))
call s1(x2(:))
call s1(x3(:))
call s2(x1(:))
call s2(x2(:))
call s2(x3(:))
end subroutine
end

use m1
integer::x1(3)
call tt(x1)
print *,'pass'
end
