module m1
 integer,contiguous,pointer::p1(:)
 integer,contiguous,pointer::p4(:)
 integer::k=1
contains 
subroutine ss1(p2)
 integer,contiguous::p2(:)
 p1(k)=1
 p2(k)=1
if (p2(1)/=1) print *,102
end subroutine
end
subroutine s1(p5)
use m1
 integer,contiguous,pointer::p3(:)
 integer,contiguous        ::p5(:)
 integer,contiguous,pointer::p6(:)
allocate(p1(1),p3(1),p4(1),p6(1))
p3(k)=1
p4(k)=1
call ss1(p3)
call ss1(p5)
call ss2
if (p1(1)/=1) print *,101
if (p3(1)/=1) print *,103
if (p4(1)/=1) print *,104
if (p5(1)/=1) print *,105
if (p6(1)/=1) print *,106
contains
subroutine ss2
p6(1)=1
end subroutine
end
 integer,contiguous,pointer::p(:)
interface
subroutine s1(p5)
 integer,contiguous        ::p5(:)
end subroutine
end interface
allocate(p(1))
call s1(p)
print *,'OK'
end
