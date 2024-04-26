module m1

interface
    subroutine s1()
    end subroutine
end interface

interface gnr
    procedure  s1,gnr
end interface

integer::kkk=0
contains
subroutine gnr(d)
    integer :: d
    kkk=kkk+4
end subroutine

subroutine sub()
    call gnr()
    kkk=kkk+8
end subroutine
end module

module m2
use m1,only:kkk,sub
interface gnr
    procedure  ss,gnr
end interface
contains
subroutine m2prc
call sub()
 if (kkk/=8+16) print *,201,kkk
kkk=0

call gnr()
 if (kkk/=1) print *,202
kkk=0
call gnr(2)
 if (kkk/=2) print *,203
end subroutine
    subroutine ss()
    kkk=kkk+1
    end subroutine
    subroutine gnr(k)
    kkk=kkk+2
    if (k/=2) print *,101
    end subroutine
end
use m2
call m2prc
print *,'pass'
end

subroutine s1()
use m1,only:kkk
    kkk=kkk+16
end subroutine
