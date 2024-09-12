module mod
  integer(kind=8),pointer :: p1
  integer(kind=8),target,save :: t1

  data p1 /t1/
  data t1 /5/
contains
subroutine sub (i)
if (p1.ne.i) print *,'NG'
end subroutine sub
end

program main
use mod
  call sub(5)
  p1 =3
  call sub(3)
print *,'pass'
end program main
