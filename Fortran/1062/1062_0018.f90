module m3
  implicit none
   contains
   subroutine sub(n)
    implicit none
    integer,external::n
    if (n()/=1) print *,901
    end subroutine
end

use m3
    implicit none
integer,external::nn
call sub(nn)
print *,'sngg168h : pass'
end
integer function nn()
    implicit none
nn=1
end

