  integer a
  real*8 b
  common /xxx/ a, b

  call sub()
  end

  subroutine sub()
  integer a
  real b
  common /xxx/ a, b

  print *, a, b
  end
