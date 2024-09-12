module m1

private

interface
  subroutine s1()
  end subroutine

  subroutine gnr(d)
    integer,value :: d
  end subroutine
end interface

interface gnr
    procedure :: s1,gnr
end interface

public::gnr,ss

contains
subroutine sub()
    print*,"sub"
    call gnr()
    call gnr(3)
end subroutine

subroutine ss
call sub()
end subroutine
end module

use m1
call ss()

call gnr()
call gnr(2)
end

subroutine s1()
    print*,"subroutine s1"
end subroutine

subroutine gnr(d)
    integer,value :: d
    print*,d,"subroutine gnr"
end subroutine
