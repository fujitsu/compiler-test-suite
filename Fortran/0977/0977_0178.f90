module m1
contains
subroutine t1
call s2('12345','12345','12345')
end subroutine
subroutine s2(c1,c2,c3)
character(len=*) c1(1)
character(len=*) c2(*)
character(len=3) c3(*)

if (any(c1/='12345'))write(6,*) "NG"
if (c2(1)/='12345')write(6,*) "NG"
if (c3(2)(1:2)/='45')write(6,*) "NG"
end subroutine
subroutine t2
call s2('12345','12345','12345')
end subroutine
end
use m1
call s1('12345','12345','12345')
call s2('12345','12345','12345')
call t1
call t2
call ys2('12345','12345','12345')
call y1
call y2
print *,'pass'
contains
subroutine y1
call ys2('12345','12345','12345')
end subroutine
subroutine ys2(c1,c2,c3)
character(len=*) c1(1)
character(len=*) c2(*)
character(len=3) c3(*)

if (any(c1/='12345'))write(6,*) "NG"
if (c2(1)/='12345')write(6,*) "NG"
if (c3(2)(1:2)/='45')write(6,*) "NG"
end subroutine
subroutine y2
call ys2('12345','12345','12345')
end subroutine
end
subroutine s1(c1,c2,c3)
character(len=*) c1(1)
character(len=*) c2(*)
character(len=3) c3(*)

if (any(c1/='12345'))write(6,*) "NG"
if (c2(1)/='12345')write(6,*) "NG"
if (c3(2)(1:2)/='45')write(6,*) "NG"
end
