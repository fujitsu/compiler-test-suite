module mod
contains
subroutine ss(ppp)
procedure(x),pointer:: ppp
interface aaa
  procedure ::ppp,ppp1
end interface
contains
  subroutine ppp1
  end subroutine
end subroutine
 subroutine x(i)
call v(i)
  end subroutine
end
use mod
call x(i)
if(i/=-1) print *,'err'
print *,'sngtin17:pass'
end
subroutine v(i)
i=-1
end subroutine v
