module moda
integer,protected :: aa
contains
subroutine sub()
volatile ::aa
aa=1
endsubroutine
end 

use moda
integer bb(10)
call sub()
do i=aa,10
bb(i)=1
enddo
if (aa.ne.1)  then
  print *,aa
  write(6,*) "NG"
 else
  print *,'pass'
 endif
end
