module m1

private::gnr

interface
    subroutine s1()
    end subroutine
end interface

interface gnr
    procedure  s1,gnr
end interface

contains
subroutine gnr(d)
    integer :: d
    print*,d,"subroutine gnr"
end subroutine

subroutine sub()
    call gnr()
end subroutine
end module

use m1
call sub()

call gnr()
call gnr(2)
print *,'pass'
contains
subroutine gnr(i)
optional:: i
if (present(i)) then
  if (i/=2) print *,101
endif
end subroutine
end

subroutine s1()
end subroutine
