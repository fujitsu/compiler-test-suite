module mod01
  external :: suba
contains
 subroutine sub1(i)
  i=i+1
 end subroutine
end module

subroutine suba(i)
  i=i+2
end subroutine

program main
use mod01,sub1a=>sub1 ,subaa=>suba
i=0
call sub1a(i)
call subaa(i)
if (i/=3) print *,'error'
print *,'pass'
end

