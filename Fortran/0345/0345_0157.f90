module mod01
 external :: suba
contains
subroutine sub1()
end subroutine
end module

 subroutine suba()
 end subroutine

module mod01a
use mod01,sub1a=>sub1    ,subaa=>suba
end module

use mod01
use mod01a
 call sub1()
 call suba()
 call subaa()
 print *,'pass'
end

