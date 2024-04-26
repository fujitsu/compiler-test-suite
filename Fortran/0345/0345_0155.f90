module mod01
external :: suba
contains
subroutine sub1(i)
i=i+1
end subroutine
end module

subroutine suba(i)
i=i*10
end subroutine

module mod01a
use mod01,sub1a=>sub1,subaa=>suba
end module

use mod01
use mod01a
i=0
call sub1(i)
call sub1a(i)
call suba(i)
call subaa(i)
if (i/=200) print *,'error'
print *,'pass'
end

