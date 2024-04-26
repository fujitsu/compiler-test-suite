module mod01
external :: suba
contains
subroutine sub1(ii)
optional::ii
end subroutine
end module

subroutine suba(ii)
end subroutine

module mod01a
use mod01,sub1a=>sub1,subaa=>suba
end module

use mod01
use mod01a
call sub1()
call sub1a(ii)
call suba()
call subaa(ii)
print *,'pass'
end
