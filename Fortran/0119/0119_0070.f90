module my_constants
  implicit none
  integer,parameter :: nnn = 5
  type, public :: str
     real,dimension (nnn) :: array = 3
     real,dimension (nnn) :: array2 = 2
     integer str_length
  end type str
  
contains

subroutine sub
  real sum
  type(str) s1
  sum = s1%array(1) + s1%array2(2)
  print *, sum
end subroutine sub

subroutine subinstr(s2)
  real sum
  type(str) s2
  sum = s2%array(1) + s2%array2(2)
  print *, sum
end subroutine subinstr

subroutine sub2
  real sum
  type(str) s3
  sum = s3%array(2) + s3%array(1) + s3%array(1) - s3%array(1) * s3%array(1) / s3%array(1) + s3%array(1)
  print *, sum
end subroutine sub2

subroutine sub3
  real sum
  type(str) s2
  type(str) s4
  sum = s2%array(1) + s2%array(1) ** 0.5
  sum = s4%array(1) + s4%array(2) - s4%array(3) * s4%array(4) / s4%array(5)
  print *, sum
end subroutine sub3

end module my_constants

program main
  use my_constants
  real sum1,sum2
  type(str) s1
  sum1 = s1%array(1) + s1%array2(1)
  sum2 = s1%array(2) + s1%array2(2)
  if (sum1 .eq. sum2) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
