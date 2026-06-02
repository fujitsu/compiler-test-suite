
module mod
contains
  subroutine sub(a1)
    complex*32,value :: a1
    entry foo(a1)
    a1 = (1,2)
  end subroutine sub
end module mod

program main
  use mod
  complex*32 :: a1

  a1 = (11,22)

  call sub(a1)
  if (a1/=(11,22)) print *,'fail'

  print *,'pass'
end program main
