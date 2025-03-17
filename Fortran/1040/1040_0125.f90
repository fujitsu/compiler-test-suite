module m
contains
subroutine sub(i)
integer a(i),b(i)
a(2)=1
b(2)=1
if (a(2)/=1)write(6,*) "NG"
if (b(2)/=1)write(6,*) "NG"
end subroutine
subroutine sub2(i)
integer i(:)
i=af(i(:))+af(i(:))
if (i(1)/=2)write(6,*) "NG"
contains
 function af(i)
integer i(:)
 integer af(size(i))
 af=i
end function
end subroutine
end
use m
integer i(1)
i=1
call sub(2)
call sub2(i)
print *,'pass'
end
