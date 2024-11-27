module moda
integer,protected :: aa
data aa/1/
contains
subroutine sub()
volatile ::aa
integer bb(10)
do aa=1,10
bb(aa)=1
enddo
endsubroutine
end

use moda
call sub()
if (aa.ne.11)  then
  print *,aa
  write(6,*) "NG"
 else
  print *,'pass'
 endif
end
