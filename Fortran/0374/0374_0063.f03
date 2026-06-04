module moda
integer,protected :: ifun
contains
subroutine sub(ifun)

volatile ::ifun
ifun=1
endsubroutine
end 
subroutine subxx()
integer :: i=1
endsubroutine

use moda
call sub(ifun)
if (ifun.ne.1)  then
  print *,ifun
  print *,'fail'
 else
  print *,'pass'
 endif
end

