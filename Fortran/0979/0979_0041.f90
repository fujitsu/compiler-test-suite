module mod1
 integer,protected :: aaa
 integer,protected :: ccc,ddd
 equivalence (aaa, ccc)
 equivalence (bbb, ddd)
 integer,protected :: bbb
 contains
 subroutine sub()
   aaa=1
   bbb=1
 end subroutine
end module
use mod1
call sub()
if (ccc.ne.1) write(6,*) "NG"
if (ddd.ne.1) write(6,*) "NG"
print *,'pass'
end
