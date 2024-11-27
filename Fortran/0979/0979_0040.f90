module mod
 integer,protected :: aaa
 contains
 subroutine sub()
  integer :: iii(10)
  do aaa=1,10
   iii(aaa)= aaa
  enddo
  print *,iii
 end subroutine
end module

use mod
call sub()
print *,"pass"
end
