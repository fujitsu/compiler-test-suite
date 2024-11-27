module mod
 integer,protected :: aaa
 allocatable :: aaa(:)
 contains
 subroutine sub()
   allocate(aaa(2))
   aaa(1)=1
   aaa(2)=2
 end subroutine
end module

use mod
 integer bbb(2)
 call sub()
 bbb = aaa
if (bbb(1).ne.1) write(6,*) "NG"
if (bbb(2).ne.2) write(6,*) "NG"
print *,"pass"
end
