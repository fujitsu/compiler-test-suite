module mod01
implicit none
  real,PROTECTED :: temp_a, temp_b
  EQUIVALENCE(temp_a,temp_b)
contains
  subroutine sub01()
    temp_a = 1
  end subroutine
end module

use mod01

  call sub01()
  print *,'pass'
  stop
end
