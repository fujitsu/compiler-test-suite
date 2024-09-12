module mod
  integer(kind=8),pointer :: p1
  integer(kind=8),target,save :: t1

  data p1 /t1/
  data t1 /5/
contains
subroutine sub ()
if (p1.ne.5) print *,'err'
end subroutine sub
end

program main
use mod
  call sub
print *,'pass'
end program main
