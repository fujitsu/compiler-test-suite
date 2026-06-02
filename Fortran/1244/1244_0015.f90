module mod
  interface sub
     module procedure sub
  end interface
contains
  subroutine sub(i)
    i=-2
  end subroutine sub
end module mod
use mod
interface sub1
   procedure sub1,sub
end interface
i=0
call sub1(i)
if(i/=-2) print *,'err'
print *,'sngtin19:pass'
contains
subroutine sub1
end subroutine sub1
end
