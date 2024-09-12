program test
  type tp0
     integer,dimension(1:2) :: ta = (/1,2/)
  end type tp0
  type(tp0) :: tt

  integer,dimension(0:*),parameter :: x = (/1,2,3/)

  print *, tt
  print *, x

end program test
