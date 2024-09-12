module  mod
contains
subroutine sub ()
  integer(kind=8),pointer :: p1
  integer(kind=8),target,save :: t1

  data p1 /t1/
  data t1 /5/

if (p1.ne.5) print *,'pass'
end subroutine sub
end

program main
use mod
  call sub
  call sub
print *,'pass'
end program main
