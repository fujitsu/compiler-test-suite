module moda
integer,protected :: aa
contains
subroutine suba()
volatile ::aa
aa=1
endsubroutine
end

module modb
volatile ::bb
integer,protected :: bb
contains
subroutine subb()
bb=1
endsubroutine
end

use moda
use modb
call suba()
call subb()
if (aa.ne.1)  then
  print *,aa
  write(6,*) "NG"
 else
  print *,'pass'
 endif
end
