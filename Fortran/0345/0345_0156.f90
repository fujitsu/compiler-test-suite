module mod01
contains
 subroutine sub1(i)
  i=777
 end subroutine
end module

module mod02
 use mod01,sub1a=>sub1
end module

program main
use mod01
use mod02
call sub1a(i)
if (i/=777) print *,'error'
print *,'pass'
end

