module mod

  type :: str1
    integer :: i
  end type

  type (str1),protected :: s1

  contains

  subroutine sub1(i)
    s1%i = i
  end subroutine
  subroutine sub2(i)
    s1 = str1(i)
  end subroutine
end module

use mod

call sub1(100)
if (s1%i/=100)write(6,*) "NG"
call sub2(200)
if (s1%i/=200)write(6,*) "NG"

print *,'pass'
end
